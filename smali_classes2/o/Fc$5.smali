.class final Lo/Fc$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Fc;-><init>(Landroid/view/ViewGroup;ZLcom/netflix/mediaclient/servicemgr/interface_/VideoType;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic b:Lo/Fc;


# direct methods
.method constructor <init>(Lo/Fc;)V
    .locals 0

    iput-object p1, p0, Lo/Fc$5;->b:Lo/Fc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 81
    iget-object p1, p0, Lo/Fc$5;->b:Lo/Fc;

    invoke-virtual {p1}, Lo/Fc;->l()V

    .line 82
    iget-object p1, p0, Lo/Fc$5;->b:Lo/Fc;

    new-instance v0, Lo/DG$Application;

    invoke-static {p1}, Lo/Fc;->d(Lo/Fc;)Z

    move-result v1

    invoke-direct {v0, v1}, Lo/DG$Application;-><init>(Z)V

    invoke-virtual {p1, v0}, Lo/Fc;->e(Ljava/lang/Object;)V

    return-void
.end method
