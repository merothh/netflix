.class Lo/CT$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/CT;->c(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lo/CT;


# direct methods
.method constructor <init>(Lo/CT;)V
    .locals 0

    .line 205
    iput-object p1, p0, Lo/CT$5;->b:Lo/CT;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    const-string p1, "nf_language_selector"

    const-string v0, "Languages::cancel"

    .line 208
    invoke-static {p1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    iget-object p1, p0, Lo/CT$5;->b:Lo/CT;

    iget-object p1, p1, Lo/CT;->c:Lo/CT$TaskDescription;

    invoke-interface {p1}, Lo/CT$TaskDescription;->a()V

    return-void
.end method
