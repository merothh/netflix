.class public final Lo/b$ActionBar;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/WrapperListAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/b;->d(Lcom/netflix/cl/model/AppView;Lo/UnicodeScript;)Lo/WrapperListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(Z)Lo/WrapperListAdapter;
    .locals 0

    .line 20
    invoke-virtual {p0, p1}, Lo/b$ActionBar;->e(Z)Lo/b$ActionBar;

    move-result-object p1

    check-cast p1, Lo/WrapperListAdapter;

    return-object p1
.end method

.method public a(Ljava/lang/String;)Lo/b$ActionBar;
    .locals 1

    const-string v0, "navigationSource"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public a()V
    .locals 0

    return-void
.end method

.method public synthetic b()Lo/WrapperListAdapter;
    .locals 1

    .line 20
    invoke-virtual {p0}, Lo/b$ActionBar;->h()Lo/b$ActionBar;

    move-result-object v0

    check-cast v0, Lo/WrapperListAdapter;

    return-object v0
.end method

.method public b(Z)Lo/b$ActionBar;
    .locals 0

    return-object p0
.end method

.method public c()Lo/WrapperListAdapter;
    .locals 1

    .line 25
    move-object v0, p0

    check-cast v0, Lo/WrapperListAdapter;

    return-object v0
.end method

.method public synthetic c(Z)Lo/WrapperListAdapter;
    .locals 0

    .line 20
    invoke-virtual {p0, p1}, Lo/b$ActionBar;->b(Z)Lo/b$ActionBar;

    move-result-object p1

    check-cast p1, Lo/WrapperListAdapter;

    return-object p1
.end method

.method public d()Lo/WrapperListAdapter;
    .locals 1

    .line 24
    move-object v0, p0

    check-cast v0, Lo/WrapperListAdapter;

    return-object v0
.end method

.method public synthetic d(Ljava/lang/String;)Lo/WrapperListAdapter;
    .locals 0

    .line 20
    invoke-virtual {p0, p1}, Lo/b$ActionBar;->a(Ljava/lang/String;)Lo/b$ActionBar;

    move-result-object p1

    check-cast p1, Lo/WrapperListAdapter;

    return-object p1
.end method

.method public e()Lo/WrapperListAdapter;
    .locals 1

    .line 26
    move-object v0, p0

    check-cast v0, Lo/WrapperListAdapter;

    return-object v0
.end method

.method public e(Z)Lo/b$ActionBar;
    .locals 0

    return-object p0
.end method

.method public h()Lo/b$ActionBar;
    .locals 0

    return-object p0
.end method
