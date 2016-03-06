﻿<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Ma_KH" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="Ma_KH" HeaderText="Ma_KH" ReadOnly="True" SortExpression="Ma_KH" />
                <asp:BoundField DataField="Ho_Ten" HeaderText="Ho_Ten" SortExpression="Ho_Ten" />
                <asp:BoundField DataField="Gioi_Tinh" HeaderText="Gioi_Tinh" SortExpression="Gioi_Tinh" />
                <asp:BoundField DataField="Dien_thoai" HeaderText="Dien_thoai" SortExpression="Dien_thoai" />
                <asp:BoundField DataField="Dia_chi" HeaderText="Dia_chi" SortExpression="Dia_chi" />
                <asp:CommandField ShowEditButton="True" />
                <asp:CommandField ShowDeleteButton="True" />
            </Columns>
        </asp:GridView>
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="Ma_KH" DataSourceID="SqlDataSource1">
            <EditItemTemplate>
                Ma_KH:
                <asp:Label ID="Ma_KHLabel1" runat="server" Text='<%# Eval("Ma_KH") %>' />
                <br />
                Ho_Ten:
                <asp:TextBox ID="Ho_TenTextBox" runat="server" Text='<%# Bind("Ho_Ten") %>' />
                <br />
                Gioi_Tinh:
                <asp:TextBox ID="Gioi_TinhTextBox" runat="server" Text='<%# Bind("Gioi_Tinh") %>' />
                <br />
                Dien_thoai:
                <asp:TextBox ID="Dien_thoaiTextBox" runat="server" Text='<%# Bind("Dien_thoai") %>' />
                <br />
                Dia_chi:
                <asp:TextBox ID="Dia_chiTextBox" runat="server" Text='<%# Bind("Dia_chi") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <InsertItemTemplate>
                Ma_KH:
                <asp:TextBox ID="Ma_KHTextBox" runat="server" Text='<%# Bind("Ma_KH") %>' />
                <br />
                Ho_Ten:
                <asp:TextBox ID="Ho_TenTextBox" runat="server" Text='<%# Bind("Ho_Ten") %>' />
                <br />
                Gioi_Tinh:
                <asp:TextBox ID="Gioi_TinhTextBox" runat="server" Text='<%# Bind("Gioi_Tinh") %>' />
                <br />
                Dien_thoai:
                <asp:TextBox ID="Dien_thoaiTextBox" runat="server" Text='<%# Bind("Dien_thoai") %>' />
                <br />
                Dia_chi:
                <asp:TextBox ID="Dia_chiTextBox" runat="server" Text='<%# Bind("Dia_chi") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
                Ma_KH:
                <asp:Label ID="Ma_KHLabel" runat="server" Text='<%# Eval("Ma_KH") %>' />
                <br />
                Ho_Ten:
                <asp:Label ID="Ho_TenLabel" runat="server" Text='<%# Bind("Ho_Ten") %>' />
                <br />
                Gioi_Tinh:
                <asp:Label ID="Gioi_TinhLabel" runat="server" Text='<%# Bind("Gioi_Tinh") %>' />
                <br />
                Dien_thoai:
                <asp:Label ID="Dien_thoaiLabel" runat="server" Text='<%# Bind("Dien_thoai") %>' />
                <br />
                Dia_chi:
                <asp:Label ID="Dia_chiLabel" runat="server" Text='<%# Bind("Dia_chi") %>' />
                <br />
                <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
            </ItemTemplate>
        </asp:FormView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:QLBHConnectionString %>" DeleteCommand="DELETE FROM [KHACHHANG] WHERE [Ma_KH] = @Ma_KH" InsertCommand="INSERT INTO [KHACHHANG] ([Ma_KH], [Ho_Ten], [Gioi_Tinh], [Dien_thoai], [Dia_chi]) VALUES (@Ma_KH, @Ho_Ten, @Gioi_Tinh, @Dien_thoai, @Dia_chi)" SelectCommand="SELECT * FROM [KHACHHANG]" UpdateCommand="UPDATE [KHACHHANG] SET [Ho_Ten] = @Ho_Ten, [Gioi_Tinh] = @Gioi_Tinh, [Dien_thoai] = @Dien_thoai, [Dia_chi] = @Dia_chi WHERE [Ma_KH] = @Ma_KH">
            <DeleteParameters>
                <asp:Parameter Name="Ma_KH" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Ma_KH" Type="String" />
                <asp:Parameter Name="Ho_Ten" Type="String" />
                <asp:Parameter Name="Gioi_Tinh" Type="String" />
                <asp:Parameter Name="Dien_thoai" Type="Int32" />
                <asp:Parameter Name="Dia_chi" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Ho_Ten" Type="String" />
                <asp:Parameter Name="Gioi_Tinh" Type="String" />
                <asp:Parameter Name="Dien_thoai" Type="Int32" />
                <asp:Parameter Name="Dia_chi" Type="String" />
                <asp:Parameter Name="Ma_KH" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    
    </div>
    </form>
</body>
</html>
