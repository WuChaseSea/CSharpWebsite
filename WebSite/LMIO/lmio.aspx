<%@ Page Title="栏目操作" Language="C#" MasterPageFile="~/MASTER/MyMaster.master" AutoEventWireup="true" CodeFile="lmio.aspx.cs" Inherits="LMIO_lmio" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
    DataKeyNames="lmid" DataSourceID="SqlDataSource1" BackColor="White" 
        BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
        GridLines="Horizontal" Width="96%">
        <AlternatingRowStyle BackColor="#F7F7F7" />
    <Columns>
        <asp:BoundField DataField="栏目" HeaderText="栏目" SortExpression="栏目" />
        <asp:BoundField DataField="说明" HeaderText="说明" SortExpression="说明" />
        <asp:BoundField DataField="排序" HeaderText="排序" SortExpression="排序" />
        <asp:TemplateField ShowHeader="False">
            <EditItemTemplate>
                <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" 
                    CommandName="Update" Text="更新"></asp:LinkButton>
                &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" 
                    CommandName="Cancel" Text="取消"></asp:LinkButton>
            </EditItemTemplate>
            <ItemTemplate>
                <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" 
                    CommandName="Edit" Text="编辑"></asp:LinkButton>
                &nbsp;
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField>
            <ItemTemplate>
                <asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" 
                    CommandName="Delete" Text='<%# delete_bt(Eval("栏目").ToString()) %>'></asp:LinkButton>
            </ItemTemplate>
        </asp:TemplateField>
    </Columns>
        <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
        <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
        <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
        <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
        <SortedAscendingCellStyle BackColor="#F4F4FD" />
        <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
        <SortedDescendingCellStyle BackColor="#D8D8F0" />
        <SortedDescendingHeaderStyle BackColor="#3E3277" />
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
    ConnectionString="<%$ ConnectionStrings:Conn %>" 
    DeleteCommand="DELETE FROM [栏目] WHERE [lmid] = @lmid" 
    InsertCommand="INSERT INTO [栏目] ([栏目], [说明], [排序]) VALUES (@栏目, @说明, @排序)" 
    SelectCommand="SELECT [lmid], [栏目], [说明], [排序] FROM [栏目] ORDER BY [排序]" 
    UpdateCommand="UPDATE [栏目] SET [栏目] = @栏目, [说明] = @说明, [排序] = @排序 WHERE [lmid] = @lmid">
    <DeleteParameters>
        <asp:Parameter Name="lmid" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="栏目" Type="String" />
        <asp:Parameter Name="说明" Type="String" />
        <asp:Parameter Name="排序" Type="Int32" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="栏目" Type="String" />
        <asp:Parameter Name="说明" Type="String" />
        <asp:Parameter Name="排序" Type="Int32" />
        <asp:Parameter Name="lmid" Type="Int32" />
    </UpdateParameters>
</asp:SqlDataSource>
    <br />
    <asp:FormView ID="FormView1" runat="server" BackColor="White" 
        BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
        DataKeyNames="lmid" DataSourceID="SqlDataSource1" DefaultMode="Insert" 
        GridLines="Horizontal" Width="90%">
        <EditItemTemplate>
            <br />
&nbsp;
        </EditItemTemplate>
        <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
        <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
        <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
        <InsertItemTemplate>
            <br />
            &nbsp;<br />&nbsp;<asp:LinkButton ID="InsertButton" runat="server" 
                CausesValidation="True" CommandName="Insert" Text="插入" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                CausesValidation="False" CommandName="Cancel" Text="取消" />
            <br />
            <table style="width: 100%">
                <tr>
                    <td>
                        栏目</td>
                    <td>
                        说明</td>
                    <td>
                        排序</td>
                </tr>
                <tr>
                    <td>
                        <asp:TextBox ID="栏目TextBox" runat="server" Text='<%# Bind("栏目") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="说明TextBox" runat="server" Text='<%# Bind("说明") %>' />
                    </td>
                    <td>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                            ControlToValidate="排序TextBox" Display="Dynamic" ErrorMessage="非数字" 
                            ValidationExpression="&quot;\d{1,3}&quot;"></asp:RegularExpressionValidator>
                        <asp:TextBox ID="排序TextBox" runat="server" Text='<%# Bind("排序") %>' 
                            Width="50px" />
                    </td>
                </tr>
            </table>
        </InsertItemTemplate>
        <ItemTemplate>
            <br />
            &nbsp;&nbsp;
        </ItemTemplate>
        <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
        <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
    </asp:FormView>
</asp:Content>

