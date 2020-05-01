.class Lo/Re$10;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Re;->c()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic c:Lo/Re;


# direct methods
.method constructor <init>(Lo/Re;)V
    .locals 0

    .line 488
    iput-object p1, p0, Lo/Re$10;->c:Lo/Re;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 491
    iget-object p2, p0, Lo/Re$10;->c:Lo/Re;

    invoke-static {p2}, Lo/Re;->c(Lo/Re;)Lo/nS;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 493
    iget-object v0, p0, Lo/Re$10;->c:Lo/Re;

    invoke-static {v0}, Lo/Re;->a(Lo/Re;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lo/nS;->c(Ljava/lang/String;)V

    .line 495
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
