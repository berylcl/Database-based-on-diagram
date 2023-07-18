-- Create the patients table
CREATE TABLE patients (
  id INT PRIMARY KEY,
  name VARCHAR(255),
  date_of_birth DATE
);

-- Create the medical_histories table
CREATE TABLE medical_histories (
  id INT PRIMARY KEY,
  admitted_at TIMESTAMP,
  patient_id INT,
  status VARCHAR(255),
  FOREIGN KEY (patient_id) REFERENCES patients(id)
);

-- Create the invoices table
CREATE TABLE invoices (
  id INT PRIMARY KEY,
  total_amount DECIMAL(10,2),
  generated_at TIMESTAMP,
  payed_at TIMESTAMP,
  medical_history_id INT,
  FOREIGN KEY (medical_history_id) REFERENCES medical_histories(id)
);

-- Create the invoice_items table
CREATE TABLE invoice_items (
  id INT PRIMARY KEY,
  unit_price DECIMAL(10,2),
  quantity INT,
  total_price DECIMAL(10,2),
  invoice_id INT,
  treatment_id INT,
  FOREIGN KEY (invoice_id) REFERENCES invoices(id),
  FOREIGN KEY (treatment_id) REFERENCES treatments(id)
);

-- Create the treatments table
CREATE TABLE treatments (
  id INT PRIMARY KEY,
  type VARCHAR(255),
  name VARCHAR(255)
);

-- Create the many-to-many join table between treatments and medical_histories
CREATE TABLE medical_history_treatments (
  medical_history_id INT,
  treatment_id INT,
  FOREIGN KEY (medical_history_id) REFERENCES medical_histories(id),
  FOREIGN KEY (treatment_id) REFERENCES treatments(id)
);

-- Create the FK indexes
CREATE INDEX fk_idx_medical_histories_patient_id ON medical_histories (patient_id);
CREATE INDEX fk_idx_invoices_medical_history_id ON invoices (medical_history_id);
CREATE INDEX fk_idx_invoice_items_invoice_id ON invoice_items (invoice_id);
CREATE INDEX fk_idx_invoice_items_treatment_id ON invoice_items (treatment_id);
CREATE INDEX fk_idx_medical_history_treatments_medical_history_id ON medical_history_treatments (medical_history_id);
CREATE INDEX fk_idx_medical_history_treatments_treatment_id ON medical_history_treatments (treatment_id);
