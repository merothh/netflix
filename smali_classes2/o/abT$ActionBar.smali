.class public final Lo/abT$ActionBar;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/abT;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ActionBar"
.end annotation


# instance fields
.field final synthetic a:Lo/abT;

.field private final b:Landroid/content/Context;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lo/abT;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "successMsg"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "failureMsg"

    invoke-static {p4, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 178
    iput-object p1, p0, Lo/abT$ActionBar;->a:Lo/abT;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lo/abT$ActionBar;->b:Landroid/content/Context;

    iput-object p3, p0, Lo/abT$ActionBar;->e:Ljava/lang/String;

    iput-object p4, p0, Lo/abT$ActionBar;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final exit()V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 195
    iget-object v0, p0, Lo/abT$ActionBar;->a:Lo/abT;

    invoke-virtual {v0}, Lo/abT;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 196
    iget-object v0, p0, Lo/abT$ActionBar;->a:Lo/abT;

    invoke-virtual {v0}, Lo/abT;->finish()V

    :cond_0
    return-void
.end method

.method public final onFailure()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 187
    iget-object v0, p0, Lo/abT$ActionBar;->a:Lo/abT;

    iget-object v1, p0, Lo/abT$ActionBar;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lo/abT;->c(Ljava/lang/String;)V

    return-void
.end method

.method public final onSuccess()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 182
    iget-object v0, p0, Lo/abT$ActionBar;->a:Lo/abT;

    iget-object v1, p0, Lo/abT$ActionBar;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lo/abT;->b(Ljava/lang/String;)V

    return-void
.end method

.method public final showToastMessage(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "toastString"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 191
    invoke-static {p1, v0}, Lo/adk;->a(Ljava/lang/String;I)V

    return-void
.end method
