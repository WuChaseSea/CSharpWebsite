<%@ Page Title="新闻增加页" Language="C#" MasterPageFile="~/MASTER/MyMaster.master" AutoEventWireup="true" CodeFile="newsin.aspx.cs" Inherits="NEWIO_newsin" %>

<%@ Register assembly="CuteEditor" namespace="CuteEditor" tagprefix="CE" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="nwid" 
        DataSourceID="SqlNewsIn" DefaultMode="Insert" Width="98%">
        <InsertItemTemplate>
            <br />
            <asp:SqlDataSource ID="SqlDatalm" runat="server" 
                ConnectionString="<%$ ConnectionStrings:Conn %>" 
                SelectCommand="SELECT [lmid], [栏目] FROM [栏目]"></asp:SqlDataSource>
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                CommandName="Insert" Text="插入" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                CausesValidation="False" CommandName="Cancel" Text="取消" />
            &nbsp;
            <asp:HyperLink ID="HyperLink1" runat="server" 
                NavigateUrl="~/NEWSIO/newslist.aspx">返回</asp:HyperLink>
            <br />
            <br />
            <br />
            <table style="width: 100%">
                <tr>
                    <td>
                        标题:</td>
                    <td>
                        <asp:TextBox ID="标题TextBox" runat="server" Text='<%# Bind("标题") %>' />
                    </td>
                    <td>
                        栏目:</td>
                    <td>
                        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDatalm" 
                            DataTextField="栏目" DataValueField="lmid" Height="22px" 
                            SelectedValue='<%# Bind("lmid") %>' Width="140px">
                        </asp:DropDownList>
                    </td>
                    <td>
                        作者:</td>
                    <td>
                        <asp:TextBox ID="作者TextBox" runat="server" Text='<%# Bind("作者") %>' />
                    </td>
                </tr>
            </table>
            <br />
            <br />
            <CE:Editor ID="Editor1" runat="server" FilesPath="" Text='<%# Bind("内容") %>' 
                URLType="Default" Width="100%">
            </CE:Editor>
        </InsertItemTemplate>
    </asp:FormView>
    <asp:SqlDataSource ID="SqlNewsIn" runat="server" 
        ConnectionString="<%$ ConnectionStrings:Conn %>" 
        DeleteCommand="DELETE FROM [新闻] WHERE [nwid] = @nwid" 
        InsertCommand="INSERT INTO [新闻] ([lmid], [标题], [作者], [内容]) VALUES (@lmid, @标题, @作者, @内容)" 
        SelectCommand="SELECT [nwid], [lmid], [标题], [作者], [内容] FROM [新闻]" 
        UpdateCommand="UPDATE [新闻] SET [lmid] = @lmid, [标题] = @标题, [作者] = @作者, [内容] = @内容 WHERE [nwid] = @nwid">
        <DeleteParameters>
            <asp:Parameter Name="nwid" Type="Int64" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="lmid" Type="Int32" />
            <asp:Parameter Name="标题" Type="String" />
            <asp:Parameter Name="作者" Type="String" />
            <asp:Parameter Name="内容" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="lmid" Type="Int32" />
            <asp:Parameter Name="标题" Type="String" />
            <asp:Parameter Name="作者" Type="String" />
            <asp:Parameter Name="内容" Type="String" />
            <asp:Parameter Name="nwid" Type="Int64" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>

