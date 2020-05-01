.class final Lo/YC$TaskDescription$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/YC$TaskDescription;-><init>(Lo/YC;Landroid/view/View;Lo/ShellCommand$StateListAnimator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic c:Lo/YC$TaskDescription;


# direct methods
.method constructor <init>(Lo/YC$TaskDescription;)V
    .locals 0

    iput-object p1, p0, Lo/YC$TaskDescription$1;->c:Lo/YC$TaskDescription;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 74
    iget-object p1, p0, Lo/YC$TaskDescription$1;->c:Lo/YC$TaskDescription;

    iget-object p1, p1, Lo/YC$TaskDescription;->c:Lo/YC;

    invoke-static {p1}, Lo/YC;->c(Lo/YC;)Lo/UpdateLock;

    move-result-object p1

    new-instance v0, Lo/YB$ComponentName;

    iget-object v1, p0, Lo/YC$TaskDescription$1;->c:Lo/YC$TaskDescription;

    invoke-virtual {v1}, Lo/YC$TaskDescription;->c()I

    move-result v1

    invoke-direct {v0, v1}, Lo/YB$ComponentName;-><init>(I)V

    invoke-interface {p1, v0}, Lo/UpdateLock;->e(Ljava/lang/Object;)V

    return-void
.end method
