.class Lo/CT$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

.field final synthetic c:Z

.field final synthetic d:Lo/CT$Application;


# direct methods
.method constructor <init>(Lo/CT;ZLo/CT$Application;)V
    .locals 0

    .line 193
    iput-object p1, p0, Lo/CT$3;->b:Lo/CT;

    iput-boolean p2, p0, Lo/CT$3;->c:Z

    iput-object p3, p0, Lo/CT$3;->d:Lo/CT$Application;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    const-string p1, "nf_language_selector"

    const-string p2, "Languages::apply"

    .line 196
    invoke-static {p1, p2}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    iget-object p1, p0, Lo/CT$3;->b:Lo/CT;

    iget-object p1, p1, Lo/CT;->c:Lo/CT$TaskDescription;

    iget-object p2, p0, Lo/CT$3;->b:Lo/CT;

    iget-object p2, p2, Lo/CT;->e:Lcom/netflix/mediaclient/media/Language;

    iget-boolean v0, p0, Lo/CT$3;->c:Z

    invoke-interface {p1, p2, v0}, Lo/CT$TaskDescription;->d(Lcom/netflix/mediaclient/media/Language;Z)V

    .line 198
    iget-object p1, p0, Lo/CT$3;->d:Lo/CT$Application;

    invoke-virtual {p1}, Lo/CT$Application;->dismiss()V

    return-void
.end method
