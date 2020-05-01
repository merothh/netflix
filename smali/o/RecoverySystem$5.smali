.class Lo/RecoverySystem$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/RecoverySystem;-><init>(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Landroid/app/Activity;

.field final synthetic d:Lo/RecoverySystem;


# direct methods
.method constructor <init>(Lo/RecoverySystem;Landroid/app/Activity;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lo/RecoverySystem$5;->d:Lo/RecoverySystem;

    iput-object p2, p0, Lo/RecoverySystem$5;->b:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 5

    .line 37
    iget-object v0, p0, Lo/RecoverySystem$5;->d:Lo/RecoverySystem;

    invoke-static {v0}, Lo/RecoverySystem;->a(Lo/RecoverySystem;)Z

    move-result v0

    .line 41
    iget-object v1, p0, Lo/RecoverySystem$5;->d:Lo/RecoverySystem;

    invoke-virtual {p2}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v2

    iget-object v3, p0, Lo/RecoverySystem$5;->b:Landroid/app/Activity;

    const/16 v4, 0x50

    invoke-static {v3, v4}, Lo/RemoteException;->a(Landroid/content/Context;I)I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p2}, Landroid/view/WindowInsets;->getStableInsetBottom()I

    move-result v3

    if-le v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {v1, v2}, Lo/RecoverySystem;->e(Lo/RecoverySystem;Z)Z

    .line 42
    iget-object v1, p0, Lo/RecoverySystem$5;->d:Lo/RecoverySystem;

    invoke-static {v1}, Lo/RecoverySystem;->a(Lo/RecoverySystem;)Z

    move-result v1

    if-eq v0, v1, :cond_1

    .line 43
    iget-object v0, p0, Lo/RecoverySystem$5;->d:Lo/RecoverySystem;

    invoke-static {v0}, Lo/RecoverySystem;->a(Lo/RecoverySystem;)Z

    move-result v1

    invoke-static {v0, v1}, Lo/RecoverySystem;->c(Lo/RecoverySystem;Z)V

    .line 46
    :cond_1
    invoke-virtual {p1, p2}, Landroid/view/View;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p1

    return-object p1
.end method
