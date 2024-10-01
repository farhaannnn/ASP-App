<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegistrationForm.aspx.cs" Inherits="WebApplication1.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 155px;
        }
        .auto-style3 {
            height: 29px;
        }
        .auto-style4 {
            width: 155px;
            height: 29px;
        }
        .auto-style5 {
            width: 360px;
        }
        .auto-style6 {
            height: 29px;
            width: 360px;
        }
        .auto-style7 {
            margin-left: 65px;
        }
        .auto-style8 {
            margin-left: 68px;
        }
        .auto-style9 {
            margin-left: 67px;
        }
        .auto-style10 {
            margin-left: 70px;
        }
        .auto-style11 {
            margin-left: 66px;
        }
        .auto-style12 {
            margin-left: 167px;
        }
        .auto-style16 {
            width: 128px;
        }
        .auto-style17 {
            width: 150px;
        }
        .auto-style18 {
            height: 376px;
        }
        .auto-style19 {
            width: 155px;
            height: 376px;
        }
        .auto-style20 {
            width: 360px;
            height: 376px;
        }
    </style>
    </head>
<body>

    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style2">
                    <asp:Label ID="lblname" runat="server" Text="Name"></asp:Label>
                </td>
                <td class="auto-style5">
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style7" Width="266px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Must enter name." SetFocusOnError="True"></asp:RequiredFieldValidator>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style2">
                    <asp:Label ID="Label2" runat="server" Text="Age"></asp:Label>
                </td>
                <td class="auto-style5">
                    <asp:TextBox ID="TextBox2" runat="server" CssClass="auto-style7" TextMode="Number" Width="266px"></asp:TextBox>
                </td>
                <td>
                    <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="Enter an age betweeen 18-60" MaximumValue="60" MinimumValue="18" SetFocusOnError="True"></asp:RangeValidator>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style2">
                    <asp:Label ID="Label3" runat="server" Text="Address"></asp:Label>
                </td>
                <td class="auto-style5">
                    <asp:TextBox ID="TextBox3" runat="server" CssClass="auto-style7" TextMode="MultiLine" Width="266px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox3" ErrorMessage="Must enter Address." SetFocusOnError="True"></asp:RequiredFieldValidator>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style2">
                    <asp:Label ID="Label4" runat="server" Text="Phone"></asp:Label>
                </td>
                <td class="auto-style5">
                    <asp:TextBox ID="TextBox4" runat="server" CssClass="auto-style7" TextMode="Phone" Width="266px"></asp:TextBox>
                </td>
                <td>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox4" ErrorMessage="Enter a valid number." ValidationExpression="((\+*)((0[ -]*)*|((91 )*))((\d{12})+|(\d{10})+))|\d{5}([- ]*)\d{6}"></asp:RegularExpressionValidator>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style2">
                    <asp:Label ID="Label5" runat="server" Text="Email"></asp:Label>
                </td>
                <td class="auto-style5">
                    <asp:TextBox ID="TextBox5" runat="server" CssClass="auto-style7" TextMode="Email" Width="266px"></asp:TextBox>
                </td>
                <td>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox5" ErrorMessage="Enter a valid email." ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3"></td>
                <td class="auto-style4"></td>
                <td class="auto-style6"></td>
                <td class="auto-style3"></td>
                <td class="auto-style3"></td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style2">
                    <asp:Label ID="Label6" runat="server" Text="Gender"></asp:Label>
                </td>
                <td class="auto-style5">
                    <asp:RadioButtonList ID="RadioButtonList1" runat="server" AutoPostBack="True" CssClass="auto-style8" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged" Width="269px">
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="RadioButtonList1" ErrorMessage="Please select a gender." SetFocusOnError="True"></asp:RequiredFieldValidator>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style2">
                    <asp:Label ID="Label7" runat="server" Text="State"></asp:Label>
                </td>
                <td class="auto-style5">
                    <asp:DropDownList ID="DropDownList1" runat="server" CssClass="auto-style9" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Width="274px">
                        <asp:ListItem>Andhra Pradesh</asp:ListItem>
                        <asp:ListItem>Arunachal Pradesh</asp:ListItem>
                        <asp:ListItem>Assam</asp:ListItem>
                        <asp:ListItem>Bihar</asp:ListItem>
                        <asp:ListItem>Chattisgarh</asp:ListItem>
                        <asp:ListItem>Goa</asp:ListItem>
                        <asp:ListItem>Gujarat</asp:ListItem>
                        <asp:ListItem>Haryana</asp:ListItem>
                        <asp:ListItem>Himachal Pradesh</asp:ListItem>
                        <asp:ListItem>Kerala</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="DropDownList1" ErrorMessage="Please enter your state." SetFocusOnError="True"></asp:RequiredFieldValidator>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style2">
                    <asp:Label ID="Label8" runat="server" Text="Qualification"></asp:Label>
                </td>
                <td class="auto-style5">
                    <asp:CheckBoxList ID="CheckBoxList1" runat="server" CssClass="auto-style10" OnSelectedIndexChanged="CheckBoxList1_SelectedIndexChanged" Width="267px">
                        <asp:ListItem>SSLC</asp:ListItem>
                        <asp:ListItem>Plus Two</asp:ListItem>
                        <asp:ListItem>B.Tech</asp:ListItem>
                        <asp:ListItem>BCA</asp:ListItem>
                        <asp:ListItem>MCA</asp:ListItem>
                    </asp:CheckBoxList>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style2">
                    <asp:Label ID="Label9" runat="server" Text="Photo"></asp:Label>
                </td>
                <td class="auto-style5">
                    <asp:FileUpload ID="FileUpload1" runat="server" CssClass="auto-style11" />
                </td>
                <td>
                    &nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3"></td>
                <td class="auto-style4">
                    <asp:Label ID="Label10" runat="server" Text="Username"></asp:Label>
                </td>
                <td class="auto-style6">
                    <asp:TextBox ID="TextBox6" runat="server" CssClass="auto-style7" Width="266px"></asp:TextBox>
                </td>
                <td class="auto-style3">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox6" ErrorMessage="Must enter username."></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style3"></td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style2">
                    <asp:Label ID="Label11" runat="server" Text="Password"></asp:Label>
                </td>
                <td class="auto-style5">
                    <asp:TextBox ID="TextBox7" runat="server" CssClass="auto-style7" TextMode="Password" Width="266px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBox7" ErrorMessage="Must enter a password." SetFocusOnError="True"></asp:RequiredFieldValidator>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style2">
                    <asp:Label ID="Label12" runat="server" Text="Confirm Password"></asp:Label>
                </td>
                <td class="auto-style5">
                    <asp:TextBox ID="TextBox8" runat="server" CssClass="auto-style7" TextMode="Password" Width="266px"></asp:TextBox>
                </td>
                <td>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox7" ControlToValidate="TextBox8" ErrorMessage="Please enter the same password."></asp:CompareValidator>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style2">
                    <asp:Label ID="Label15" runat="server" Text="Result"></asp:Label>
                </td>
                <td class="auto-style5">
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style12" OnClick="Button1_Click" Text="Display" />
                </td>
                <td>
                    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Submit" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style18"></td>
                <td class="auto-style19"></td>
                <td class="auto-style20">
                    <asp:Panel ID="Panel1" runat="server" Height="505px" Visible="False" Width="441px">
                        <table class="auto-style1">
                            <tr>
                                <td class="auto-style17">
                                    <asp:Label ID="Label13" runat="server" Text="Name:"></asp:Label>
                                </td>
                                <td class="auto-style16">
                                    <asp:Label ID="labelname" runat="server" Text="Label"></asp:Label>
                                </td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style17">
                                    <asp:Label ID="Label14" runat="server" Text="Age:"></asp:Label>
                                </td>
                                <td class="auto-style16">
                                    <asp:Label ID="labelage" runat="server" Text="Label"></asp:Label>
                                </td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style17">
                                    <asp:Label ID="labelname0" runat="server" Text="Address:"></asp:Label>
                                </td>
                                <td class="auto-style16">
                                    <asp:Label ID="labeladdress" runat="server" Text="Label"></asp:Label>
                                </td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style17">
                                    <asp:Label ID="labelname1" runat="server" Text="Phone:"></asp:Label>
                                </td>
                                <td class="auto-style16">
                                    <asp:Label ID="labelphone" runat="server" Text="Label"></asp:Label>
                                </td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style17">
                                    <asp:Label ID="labelname2" runat="server" Text="Email:"></asp:Label>
                                </td>
                                <td class="auto-style16">
                                    <asp:Label ID="labelmail" runat="server" Text="Label"></asp:Label>
                                </td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style17">
                                    <asp:Label ID="labelname3" runat="server" Text="Gender:"></asp:Label>
                                </td>
                                <td class="auto-style16">
                                    <asp:Label ID="labelgender" runat="server" Text="Label"></asp:Label>
                                </td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style17">
                                    <asp:Label ID="labelname4" runat="server" Text="State:"></asp:Label>
                                </td>
                                <td class="auto-style16">
                                    <asp:Label ID="labelstate" runat="server" Text="Label"></asp:Label>
                                </td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style17">
                                    <asp:Label ID="labelname6" runat="server" Text="Qualification: "></asp:Label>
                                </td>
                                <td class="auto-style16">
                                    <asp:Label ID="labelqualification" runat="server" Text="Label"></asp:Label>
                                </td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style17">
                                    <asp:Label ID="labelname5" runat="server" Text="Photo: "></asp:Label>
                                </td>
                                <td class="auto-style16">
                                    <asp:Image ID="Image1" runat="server" Height="191px" Width="175px" />
                                </td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style17">&nbsp;</td>
                                <td class="auto-style16">&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style17">&nbsp;</td>
                                <td class="auto-style16">&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style17">&nbsp;</td>
                                <td class="auto-style16">&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                        </table>
                    </asp:Panel>
                </td>
                <td class="auto-style18"></td>
                <td class="auto-style18"></td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>

</body>
</html>
