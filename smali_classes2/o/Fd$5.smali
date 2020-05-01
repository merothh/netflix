.class final Lo/Fd$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Fd;-><init>(Landroid/view/ViewGroup;Lio/reactivex/Observable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/Fd;


# direct methods
.method constructor <init>(Lo/Fd;)V
    .locals 0

    iput-object p1, p0, Lo/Fd$5;->a:Lo/Fd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 122
    iget-object p1, p0, Lo/Fd$5;->a:Lo/Fd;

    invoke-static {p1}, Lo/Fd;->a(Lo/Fd;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 123
    iget-object p1, p0, Lo/Fd$5;->a:Lo/Fd;

    sget-object v0, Lo/DG$ActionBar;->e:Lo/DG$ActionBar;

    invoke-virtual {p1, v0}, Lo/Fd;->e(Ljava/lang/Object;)V

    goto :goto_0

    .line 125
    :cond_0
    sget p1, Lcom/netflix/mediaclient/ui/R$AssistContent;->kn:I

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lo/adk;->c(II)V

    :goto_0
    return-void
.end method
