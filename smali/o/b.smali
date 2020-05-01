.class public final Lo/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ViewSwitcher;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public b(Z)Lo/ViewAnimator;
    .locals 0

    .line 33
    new-instance p1, Lo/b$Activity;

    invoke-direct {p1}, Lo/b$Activity;-><init>()V

    check-cast p1, Lo/ViewAnimator;

    return-object p1
.end method

.method public b()Lo/ViewSwitcher;
    .locals 1

    .line 16
    move-object v0, p0

    check-cast v0, Lo/ViewSwitcher;

    return-object v0
.end method

.method public d(Lcom/netflix/cl/model/AppView;Lo/UnicodeScript;)Lo/WrapperListAdapter;
    .locals 1

    const-string v0, "appView"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "lifecycleOwner"

    invoke-static {p2, p1}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    new-instance p1, Lo/b$ActionBar;

    invoke-direct {p1}, Lo/b$ActionBar;-><init>()V

    check-cast p1, Lo/WrapperListAdapter;

    return-object p1
.end method
