.class final Lo/Sx$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Sx;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic c:Lo/Sx;


# direct methods
.method constructor <init>(Lo/Sx;)V
    .locals 0

    iput-object p1, p0, Lo/Sx$4;->c:Lo/Sx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 14
    iget-object p1, p0, Lo/Sx$4;->c:Lo/Sx;

    invoke-static {p1}, Lo/Sx;->e(Lo/Sx;)Lcom/netflix/mediaclient/ui/offline/DownloadButton;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->a()V

    return-void
.end method
