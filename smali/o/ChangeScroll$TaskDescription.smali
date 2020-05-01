.class public final Lo/ChangeScroll$TaskDescription;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/TextClassificationSessionFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/ChangeScroll;->b(Lcom/netflix/android/moneyball/fields/ActionField;Lo/Cloneable;Lo/TextClassificationSessionFactory;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic c:Lo/ChangeScroll;

.field final synthetic d:Lo/Cloneable;

.field final synthetic e:Lo/TextClassificationSessionFactory;


# direct methods
.method constructor <init>(Lo/ChangeScroll;Lo/Cloneable;Lo/TextClassificationSessionFactory;)V
    .locals 0

    iput-object p1, p0, Lo/ChangeScroll$TaskDescription;->c:Lo/ChangeScroll;

    iput-object p2, p0, Lo/ChangeScroll$TaskDescription;->d:Lo/Cloneable;

    iput-object p3, p0, Lo/ChangeScroll$TaskDescription;->e:Lo/TextClassificationSessionFactory;

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAfterNetworkAction(Lo/TextClassifierImpl$Application;)V
    .locals 2

    const-string v0, "response"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    iget-object v0, p0, Lo/ChangeScroll$TaskDescription;->d:Lo/Cloneable;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/Cloneable;->e(Ljava/lang/Object;)V

    .line 42
    invoke-virtual {p1}, Lo/TextClassifierImpl$Application;->e()Z

    move-result v0

    if-nez v0, :cond_1

    .line 43
    iget-object v0, p0, Lo/ChangeScroll$TaskDescription;->c:Lo/ChangeScroll;

    invoke-virtual {v0}, Lo/ChangeScroll;->d()Lo/Cloneable;

    move-result-object v0

    invoke-virtual {p1}, Lo/TextClassifierImpl$Application;->i()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 44
    iget-object v1, p0, Lo/ChangeScroll$TaskDescription;->c:Lo/ChangeScroll;

    invoke-static {v1}, Lo/ChangeScroll;->c(Lo/ChangeScroll;)Lo/InputBinding;

    move-result-object v1

    invoke-virtual {v1, p1}, Lo/InputBinding;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 45
    :cond_0
    iget-object p1, p0, Lo/ChangeScroll$TaskDescription;->c:Lo/ChangeScroll;

    invoke-static {p1}, Lo/ChangeScroll;->c(Lo/ChangeScroll;)Lo/InputBinding;

    move-result-object p1

    sget v1, Lcom/netflix/mediaclient/ui/R$AssistContent;->da:I

    invoke-virtual {p1, v1}, Lo/InputBinding;->c(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {v0, p1}, Lo/Cloneable;->e(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public onBeforeNetworkAction(Lo/TextClassifierImpl$ActionBar;)V
    .locals 1

    const-string v0, "request"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
