#pragma once
#include <string>
#include <ctime>

float moneyValues[10] = {
   5000, 1000, 500, 100, 50, 10, 5, 1, 0.5, 0.1
};

int n = 0;

namespace MoneyAlg {

	using namespace System;
	using namespace System::ComponentModel;
	using namespace System::Collections;
	using namespace System::Windows::Forms;
	using namespace System::Data;
	using namespace System::Drawing;

	/// <summary>
	/// Сводка для MyForm
	/// </summary>
	public ref class MyForm : public System::Windows::Forms::Form
	{
	public:
		MyForm(void)
		{
			InitializeComponent();
			//
			//TODO: добавьте код конструктора
			//
		}

	protected:
		/// <summary>
		/// Освободить все используемые ресурсы.
		/// </summary>
		~MyForm()
		{
			if (components)
			{
				delete components;
			}
		}
	private: System::Windows::Forms::CheckBox^ checkBox1;
	protected:
	private: System::Windows::Forms::CheckBox^ checkBox2;
	private: System::Windows::Forms::CheckBox^ checkBox3;
	private: System::Windows::Forms::CheckBox^ checkBox4;
	private: System::Windows::Forms::CheckBox^ checkBox5;
	private: System::Windows::Forms::CheckBox^ checkBox6;
	private: System::Windows::Forms::CheckBox^ checkBox7;
	private: System::Windows::Forms::CheckBox^ checkBox8;
	private: System::Windows::Forms::CheckBox^ checkBox9;
	private: System::Windows::Forms::CheckBox^ checkBox10;
	private: System::Windows::Forms::Label^ label1;
	private: System::Windows::Forms::Label^ label2;
	private: System::Windows::Forms::Label^ label3;
	private: System::Windows::Forms::Label^ label4;
	private: System::Windows::Forms::Label^ label5;
	private: System::Windows::Forms::Label^ label6;

	private: System::Windows::Forms::TextBox^ textBox1;
	private: System::Windows::Forms::Button^ button1;
	private: System::Windows::Forms::Label^ label7;
	private: System::Windows::Forms::ListBox^ listBox1;
	private: System::Windows::Forms::TextBox^ textBox2;
	private: System::Windows::Forms::Label^ label8;


	private:
		/// <summary>
		/// Обязательная переменная конструктора.
		/// </summary>
		System::ComponentModel::Container ^components;

#pragma region Windows Form Designer generated code
		/// <summary>
		/// Требуемый метод для поддержки конструктора — не изменяйте 
		/// содержимое этого метода с помощью редактора кода.
		/// </summary>
	
		void InitializeComponent(void)
		{
			this->checkBox1 = (gcnew System::Windows::Forms::CheckBox());
			this->checkBox2 = (gcnew System::Windows::Forms::CheckBox());
			this->checkBox3 = (gcnew System::Windows::Forms::CheckBox());
			this->checkBox4 = (gcnew System::Windows::Forms::CheckBox());
			this->checkBox5 = (gcnew System::Windows::Forms::CheckBox());
			this->checkBox6 = (gcnew System::Windows::Forms::CheckBox());
			this->checkBox7 = (gcnew System::Windows::Forms::CheckBox());
			this->checkBox8 = (gcnew System::Windows::Forms::CheckBox());
			this->checkBox9 = (gcnew System::Windows::Forms::CheckBox());
			this->checkBox10 = (gcnew System::Windows::Forms::CheckBox());
			this->label1 = (gcnew System::Windows::Forms::Label());
			this->label2 = (gcnew System::Windows::Forms::Label());
			this->label3 = (gcnew System::Windows::Forms::Label());
			this->label4 = (gcnew System::Windows::Forms::Label());
			this->label5 = (gcnew System::Windows::Forms::Label());
			this->label6 = (gcnew System::Windows::Forms::Label());
			this->textBox1 = (gcnew System::Windows::Forms::TextBox());
			this->button1 = (gcnew System::Windows::Forms::Button());
			this->label7 = (gcnew System::Windows::Forms::Label());
			this->listBox1 = (gcnew System::Windows::Forms::ListBox());
			this->textBox2 = (gcnew System::Windows::Forms::TextBox());
			this->label8 = (gcnew System::Windows::Forms::Label());
			this->SuspendLayout();
			// 
			// checkBox1
			// 
			this->checkBox1->AutoSize = true;
			this->checkBox1->Checked = true;
			this->checkBox1->CheckState = System::Windows::Forms::CheckState::Checked;
			this->checkBox1->Location = System::Drawing::Point(426, 51);
			this->checkBox1->Name = L"checkBox1";
			this->checkBox1->Size = System::Drawing::Size(62, 21);
			this->checkBox1->TabIndex = 0;
			this->checkBox1->Text = L"5000";
			this->checkBox1->UseVisualStyleBackColor = true;
			this->checkBox1->CheckedChanged += gcnew System::EventHandler(this, &MyForm::checkBox1_CheckedChanged);
			// 
			// checkBox2
			// 
			this->checkBox2->AutoSize = true;
			this->checkBox2->Checked = true;
			this->checkBox2->CheckState = System::Windows::Forms::CheckState::Checked;
			this->checkBox2->Location = System::Drawing::Point(426, 78);
			this->checkBox2->Name = L"checkBox2";
			this->checkBox2->Size = System::Drawing::Size(62, 21);
			this->checkBox2->TabIndex = 1;
			this->checkBox2->Text = L"1000";
			this->checkBox2->UseVisualStyleBackColor = true;
			this->checkBox2->CheckedChanged += gcnew System::EventHandler(this, &MyForm::checkBox2_CheckedChanged);
			// 
			// checkBox3
			// 
			this->checkBox3->AutoSize = true;
			this->checkBox3->Checked = true;
			this->checkBox3->CheckState = System::Windows::Forms::CheckState::Checked;
			this->checkBox3->Location = System::Drawing::Point(426, 105);
			this->checkBox3->Name = L"checkBox3";
			this->checkBox3->Size = System::Drawing::Size(54, 21);
			this->checkBox3->TabIndex = 2;
			this->checkBox3->Text = L"500";
			this->checkBox3->UseVisualStyleBackColor = true;
			this->checkBox3->CheckedChanged += gcnew System::EventHandler(this, &MyForm::checkBox3_CheckedChanged);
			// 
			// checkBox4
			// 
			this->checkBox4->AutoSize = true;
			this->checkBox4->Checked = true;
			this->checkBox4->CheckState = System::Windows::Forms::CheckState::Checked;
			this->checkBox4->Location = System::Drawing::Point(426, 132);
			this->checkBox4->Name = L"checkBox4";
			this->checkBox4->Size = System::Drawing::Size(54, 21);
			this->checkBox4->TabIndex = 3;
			this->checkBox4->Text = L"100";
			this->checkBox4->UseVisualStyleBackColor = true;
			this->checkBox4->CheckedChanged += gcnew System::EventHandler(this, &MyForm::checkBox4_CheckedChanged);
			// 
			// checkBox5
			// 
			this->checkBox5->AutoSize = true;
			this->checkBox5->Checked = true;
			this->checkBox5->CheckState = System::Windows::Forms::CheckState::Checked;
			this->checkBox5->Location = System::Drawing::Point(426, 159);
			this->checkBox5->Name = L"checkBox5";
			this->checkBox5->Size = System::Drawing::Size(46, 21);
			this->checkBox5->TabIndex = 4;
			this->checkBox5->Text = L"50";
			this->checkBox5->UseVisualStyleBackColor = true;
			this->checkBox5->CheckedChanged += gcnew System::EventHandler(this, &MyForm::checkBox5_CheckedChanged);
			// 
			// checkBox6
			// 
			this->checkBox6->AutoSize = true;
			this->checkBox6->Checked = true;
			this->checkBox6->CheckState = System::Windows::Forms::CheckState::Checked;
			this->checkBox6->Location = System::Drawing::Point(550, 51);
			this->checkBox6->Name = L"checkBox6";
			this->checkBox6->Size = System::Drawing::Size(46, 21);
			this->checkBox6->TabIndex = 5;
			this->checkBox6->Text = L"10";
			this->checkBox6->UseVisualStyleBackColor = true;
			this->checkBox6->CheckedChanged += gcnew System::EventHandler(this, &MyForm::checkBox6_CheckedChanged);
			// 
			// checkBox7
			// 
			this->checkBox7->AutoSize = true;
			this->checkBox7->Checked = true;
			this->checkBox7->CheckState = System::Windows::Forms::CheckState::Checked;
			this->checkBox7->Location = System::Drawing::Point(550, 78);
			this->checkBox7->Name = L"checkBox7";
			this->checkBox7->Size = System::Drawing::Size(38, 21);
			this->checkBox7->TabIndex = 6;
			this->checkBox7->Text = L"5";
			this->checkBox7->UseVisualStyleBackColor = true;
			this->checkBox7->CheckedChanged += gcnew System::EventHandler(this, &MyForm::checkBox7_CheckedChanged);
			// 
			// checkBox8
			// 
			this->checkBox8->AutoSize = true;
			this->checkBox8->Checked = true;
			this->checkBox8->CheckState = System::Windows::Forms::CheckState::Checked;
			this->checkBox8->Location = System::Drawing::Point(550, 105);
			this->checkBox8->Name = L"checkBox8";
			this->checkBox8->Size = System::Drawing::Size(38, 21);
			this->checkBox8->TabIndex = 7;
			this->checkBox8->Text = L"1";
			this->checkBox8->UseVisualStyleBackColor = true;
			this->checkBox8->CheckedChanged += gcnew System::EventHandler(this, &MyForm::checkBox8_CheckedChanged);
			// 
			// checkBox9
			// 
			this->checkBox9->AutoSize = true;
			this->checkBox9->Checked = true;
			this->checkBox9->CheckState = System::Windows::Forms::CheckState::Checked;
			this->checkBox9->Location = System::Drawing::Point(550, 132);
			this->checkBox9->Name = L"checkBox9";
			this->checkBox9->Size = System::Drawing::Size(50, 21);
			this->checkBox9->TabIndex = 8;
			this->checkBox9->Text = L"0.5";
			this->checkBox9->UseVisualStyleBackColor = true;
			this->checkBox9->CheckedChanged += gcnew System::EventHandler(this, &MyForm::checkBox9_CheckedChanged);
			// 
			// checkBox10
			// 
			this->checkBox10->AutoSize = true;
			this->checkBox10->Checked = true;
			this->checkBox10->CheckState = System::Windows::Forms::CheckState::Checked;
			this->checkBox10->Location = System::Drawing::Point(550, 159);
			this->checkBox10->Name = L"checkBox10";
			this->checkBox10->Size = System::Drawing::Size(50, 21);
			this->checkBox10->TabIndex = 9;
			this->checkBox10->Text = L"0.1";
			this->checkBox10->UseVisualStyleBackColor = true;
			this->checkBox10->CheckedChanged += gcnew System::EventHandler(this, &MyForm::checkBox10_CheckedChanged);
			// 
			// label1
			// 
			this->label1->AutoSize = true;
			this->label1->Font = (gcnew System::Drawing::Font(L"Microsoft Sans Serif", 12, System::Drawing::FontStyle::Regular, System::Drawing::GraphicsUnit::Point,
				static_cast<System::Byte>(204)));
			this->label1->Location = System::Drawing::Point(411, 9);
			this->label1->Name = L"label1";
			this->label1->Size = System::Drawing::Size(271, 25);
			this->label1->TabIndex = 10;
			this->label1->Text = L"Наличие номиналов в кассе";
			// 
			// label2
			// 
			this->label2->AutoSize = true;
			this->label2->Font = (gcnew System::Drawing::Font(L"Microsoft Sans Serif", 13.8F, System::Drawing::FontStyle::Regular, System::Drawing::GraphicsUnit::Point,
				static_cast<System::Byte>(204)));
			this->label2->Location = System::Drawing::Point(13, 13);
			this->label2->Name = L"label2";
			this->label2->Size = System::Drawing::Size(86, 29);
			this->label2->TabIndex = 11;
			this->label2->Text = L"С вас: ";
			// 
			// label3
			// 
			this->label3->AutoSize = true;
			this->label3->Font = (gcnew System::Drawing::Font(L"Microsoft Sans Serif", 13.8F, System::Drawing::FontStyle::Bold, System::Drawing::GraphicsUnit::Point,
				static_cast<System::Byte>(204)));
			this->label3->Location = System::Drawing::Point(93, 13);
			this->label3->Name = L"label3";
			this->label3->Size = System::Drawing::Size(27, 29);
			this->label3->TabIndex = 12;
			this->label3->Text = L"0";
			// 
			// label4
			// 
			this->label4->AutoSize = true;
			this->label4->Font = (gcnew System::Drawing::Font(L"Microsoft Sans Serif", 13.8F, System::Drawing::FontStyle::Regular, System::Drawing::GraphicsUnit::Point,
				static_cast<System::Byte>(204)));
			this->label4->Location = System::Drawing::Point(13, 43);
			this->label4->Name = L"label4";
			this->label4->Size = System::Drawing::Size(231, 29);
			this->label4->TabIndex = 13;
			this->label4->Text = L"Введенная сумма: ";
			// 
			// label5
			// 
			this->label5->AutoSize = true;
			this->label5->Font = (gcnew System::Drawing::Font(L"Microsoft Sans Serif", 13.8F, System::Drawing::FontStyle::Bold, System::Drawing::GraphicsUnit::Point,
				static_cast<System::Byte>(204)));
			this->label5->Location = System::Drawing::Point(250, 42);
			this->label5->Name = L"label5";
			this->label5->Size = System::Drawing::Size(27, 29);
			this->label5->TabIndex = 14;
			this->label5->Text = L"0";
			// 
			// label6
			// 
			this->label6->AutoSize = true;
			this->label6->Font = (gcnew System::Drawing::Font(L"Microsoft Sans Serif", 13.8F, System::Drawing::FontStyle::Regular, System::Drawing::GraphicsUnit::Point,
				static_cast<System::Byte>(204)));
			this->label6->Location = System::Drawing::Point(13, 97);
			this->label6->Name = L"label6";
			this->label6->Size = System::Drawing::Size(90, 29);
			this->label6->TabIndex = 15;
			this->label6->Text = L"Сдача:";
			// 
			// textBox1
			// 
			this->textBox1->Location = System::Drawing::Point(416, 236);
			this->textBox1->Name = L"textBox1";
			this->textBox1->Size = System::Drawing::Size(143, 22);
			this->textBox1->TabIndex = 17;
			// 
			// button1
			// 
			this->button1->Location = System::Drawing::Point(416, 264);
			this->button1->Name = L"button1";
			this->button1->Size = System::Drawing::Size(249, 48);
			this->button1->TabIndex = 18;
			this->button1->Text = L"Ввод";
			this->button1->UseVisualStyleBackColor = true;
			this->button1->Click += gcnew System::EventHandler(this, &MyForm::button1_Click);
			// 
			// label7
			// 
			this->label7->AutoSize = true;
			this->label7->Font = (gcnew System::Drawing::Font(L"Microsoft Sans Serif", 12, System::Drawing::FontStyle::Regular, System::Drawing::GraphicsUnit::Point,
				static_cast<System::Byte>(204)));
			this->label7->Location = System::Drawing::Point(411, 205);
			this->label7->Name = L"label7";
			this->label7->Size = System::Drawing::Size(189, 25);
			this->label7->TabIndex = 19;
			this->label7->Text = L"Введите значение:";
			// 
			// listBox1
			// 
			this->listBox1->Font = (gcnew System::Drawing::Font(L"Microsoft Sans Serif", 12, System::Drawing::FontStyle::Regular, System::Drawing::GraphicsUnit::Point,
				static_cast<System::Byte>(204)));
			this->listBox1->FormattingEnabled = true;
			this->listBox1->ItemHeight = 25;
			this->listBox1->Location = System::Drawing::Point(12, 132);
			this->listBox1->Name = L"listBox1";
			this->listBox1->Size = System::Drawing::Size(393, 179);
			this->listBox1->TabIndex = 20;
			// 
			// textBox2
			// 
			this->textBox2->Location = System::Drawing::Point(586, 236);
			this->textBox2->Name = L"textBox2";
			this->textBox2->Size = System::Drawing::Size(79, 22);
			this->textBox2->TabIndex = 21;
			this->textBox2->Text = L"0";
			// 
			// label8
			// 
			this->label8->AutoSize = true;
			this->label8->Font = (gcnew System::Drawing::Font(L"Microsoft Sans Serif", 12, System::Drawing::FontStyle::Bold, System::Drawing::GraphicsUnit::Point,
				static_cast<System::Byte>(204)));
			this->label8->Location = System::Drawing::Point(565, 235);
			this->label8->Name = L"label8";
			this->label8->Size = System::Drawing::Size(18, 25);
			this->label8->TabIndex = 22;
			this->label8->Text = L".";
			// 
			// MyForm
			// 
			this->AutoScaleDimensions = System::Drawing::SizeF(8, 16);
			this->AutoScaleMode = System::Windows::Forms::AutoScaleMode::Font;
			this->ClientSize = System::Drawing::Size(692, 328);
			this->Controls->Add(this->label8);
			this->Controls->Add(this->textBox2);
			this->Controls->Add(this->listBox1);
			this->Controls->Add(this->label7);
			this->Controls->Add(this->button1);
			this->Controls->Add(this->textBox1);
			this->Controls->Add(this->label6);
			this->Controls->Add(this->label5);
			this->Controls->Add(this->label4);
			this->Controls->Add(this->label3);
			this->Controls->Add(this->label2);
			this->Controls->Add(this->label1);
			this->Controls->Add(this->checkBox10);
			this->Controls->Add(this->checkBox9);
			this->Controls->Add(this->checkBox8);
			this->Controls->Add(this->checkBox7);
			this->Controls->Add(this->checkBox6);
			this->Controls->Add(this->checkBox5);
			this->Controls->Add(this->checkBox4);
			this->Controls->Add(this->checkBox3);
			this->Controls->Add(this->checkBox2);
			this->Controls->Add(this->checkBox1);
			this->Name = L"MyForm";
			this->Text = L"MyForm";
			this->Load += gcnew System::EventHandler(this, &MyForm::MyForm_Load);
			this->ResumeLayout(false);
			this->PerformLayout();

		}
#pragma endregion
	private: System::Void checkBox1_CheckedChanged(System::Object^ sender, System::EventArgs^ e) {
		n = 0;
		int index;
		float checkTxt;
		checkTxt = (float)Convert::ToDouble(checkBox1->Text);

		if (!checkBox1->Checked) {

			for (int i = 0; i < 10; i++)
				if (moneyValues[i] == checkTxt)
				{
					moneyValues[i] = 0;
					index = i;
				}
		}
		else
			moneyValues[index] = checkTxt;

	}
private: System::Void checkBox9_CheckedChanged(System::Object^ sender, System::EventArgs^ e) {

	n = 0;
	int index;
	float checkTxt;
	checkTxt = (float)Convert::ToDouble(checkBox9->Text);

	if (!checkBox9->Checked) {

		for (int i = 0; i < 10; i++)
			if (moneyValues[i] == checkTxt)
			{
				moneyValues[i] = 0;
				index = i;
			}
	}
	else
		moneyValues[index] = checkTxt;


	}
private: System::Void checkBox10_CheckedChanged(System::Object^ sender, System::EventArgs^ e) {

	n = 0;
	int index;
	float checkTxt;
	checkTxt = (float)Convert::ToDouble(checkBox10->Text);

	if (!checkBox10->Checked) {

		for (int i = 0; i < 10; i++)
			if (moneyValues[i] == checkTxt)
			{
				moneyValues[i] = 0;
				index = i;
			}
	}
	else
		moneyValues[index] = checkTxt;


	}
private: System::Void checkBox7_CheckedChanged(System::Object^ sender, System::EventArgs^ e) {

	n = 0;
	int index;
	float checkTxt;
	checkTxt = (float)Convert::ToDouble(checkBox7->Text);

	if (!checkBox7->Checked) {

		for (int i = 0; i < 10; i++)
			if (moneyValues[i] == checkTxt)
			{
				moneyValues[i] = 0;
				index = i;
			}
	}
	else
		moneyValues[index] = checkTxt;


	}
private: System::Void checkBox6_CheckedChanged(System::Object^ sender, System::EventArgs^ e) {
	n = 0;
	int index;
	float checkTxt;
	checkTxt = (float)Convert::ToDouble(checkBox6->Text);

	if (!checkBox6->Checked) {

		for (int i = 0; i < 10; i++)
			if (moneyValues[i] == checkTxt)
			{
				moneyValues[i] = 0;
				index = i;
			}
	}
	else
		moneyValues[index] = checkTxt;

	}
private: System::Void checkBox5_CheckedChanged(System::Object^ sender, System::EventArgs^ e) {

	n = 0;
	int index;
	float checkTxt;
	checkTxt = (float)Convert::ToDouble(checkBox5->Text);

	if (!checkBox5->Checked) {

		for (int i = 0; i < 10; i++)
			if (moneyValues[i] == checkTxt)
			{
				moneyValues[i] = 0;
				index = i;
			}
	}
	else
		moneyValues[index] = checkTxt;

	}
private: System::Void checkBox4_CheckedChanged(System::Object^ sender, System::EventArgs^ e) {

	n = 0;
	int index;
	float checkTxt;
	checkTxt = (float)Convert::ToDouble(checkBox4->Text);

	if (!checkBox4->Checked) {

		for (int i = 0; i < 10; i++)
			if (moneyValues[i] == checkTxt)
			{
				moneyValues[i] = 0;
				index = i;
			}
	}
	else
		moneyValues[index] = checkTxt;

	}
private: System::Void checkBox3_CheckedChanged(System::Object^ sender, System::EventArgs^ e) {

	n = 0;
	int index;
	float checkTxt;
	checkTxt = (float)Convert::ToDouble(checkBox3->Text);

	if (!checkBox3->Checked) {

		for (int i = 0; i < 10; i++)
			if (moneyValues[i] == checkTxt)
			{
				moneyValues[i] = 0;
				index = i;
			}
	}
	else
		moneyValues[index] = checkTxt;

	}
private: System::Void checkBox2_CheckedChanged(System::Object^ sender, System::EventArgs^ e) {

	n = 0;
	int index;
	float checkTxt;
	checkTxt = (float)Convert::ToDouble(checkBox2->Text);

	if (!checkBox2->Checked) {

		for (int i = 0; i < 10; i++)
			if (moneyValues[i] == checkTxt)
			{
				moneyValues[i] = 0;
				index = i;
			}
	}
	else
		moneyValues[index] = checkTxt;


	}
private: System::Void checkBox8_CheckedChanged(System::Object^ sender, System::EventArgs^ e) {
	n = 0;
	int index;
	float checkTxt;
	checkTxt = (float)Convert::ToDouble(checkBox8->Text);

	if (!checkBox8->Checked) {

		for (int i = 0; i < 10; i++)
			if (moneyValues[i] == checkTxt)
			{
				moneyValues[i] = 0;
				index = i;
			}
	}
	else
		moneyValues[index] = checkTxt;

	}
private: System::Void MyForm_Load(System::Object^ sender, System::EventArgs^ e) {
	int a, b;
	srand(time(NULL));
	a = rand() % 1000 + 250;
	b = rand() % 9 + 1;
	
	label3->Text = Convert::ToString(a) + "," + Convert::ToString(b);
}
private: System::Void button1_Click(System::Object^ sender, System::EventArgs^ e) {

	float InputVal, InputCop, InputVal2;
	int Ni;
	int i;
	float GetSum;

	GetSum = (float)Convert::ToDouble(label3->Text);

	std::string output;

	InputVal = (float)(Convert::ToDouble(textBox1->Text));
	InputCop = (float)(Convert::ToDouble(textBox2->Text));

	while (InputCop > 1)
		InputCop = InputCop / 10;

	InputVal = InputVal + InputCop;
	label5->Text = Convert::ToString(InputVal);
	InputVal = InputVal - GetSum;
	listBox1->Items->Add("--- " + Convert::ToString(InputVal) + " ---");

	i = 0;
	while (InputVal > 0)
	{
		Ni = (InputVal / moneyValues[i]);
		InputVal = InputVal - (Ni * moneyValues[i]);

		if (Ni > 0)
			listBox1->Items->Add(Convert::ToString(moneyValues[i]) + " р" + " - " + Convert::ToString(Ni));
		i++;
	}
	listBox1->Items->Add("------------");
}
};
}
