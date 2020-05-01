.class Lo/Service$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/alA;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Service;-><init>(Landroid/content/Context;Lo/SearchDialog;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/alA<",
        "Ljava/lang/Boolean;",
        "Lo/akj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic c:Lo/Service;


# direct methods
.method constructor <init>(Lo/Service;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lo/Service$2;->c:Lo/Service;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public e(Ljava/lang/Boolean;)Lo/akj;
    .locals 0

    .line 136
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 137
    iget-object p1, p0, Lo/Service$2;->c:Lo/Service;

    iget-object p1, p1, Lo/Service;->j:Lo/TabActivity;

    invoke-virtual {p1}, Lo/TabActivity;->a()V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 133
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lo/Service$2;->e(Ljava/lang/Boolean;)Lo/akj;

    move-result-object p1

    return-object p1
.end method
