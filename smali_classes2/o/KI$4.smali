.class Lo/KI$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/KI;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/KI;


# direct methods
.method constructor <init>(Lo/KI;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lo/KI$4;->a:Lo/KI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 85
    iget-object v0, p0, Lo/KI$4;->a:Lo/KI;

    invoke-virtual {v0}, Lo/KI;->getAdapterPosition()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 87
    iget-object v1, p0, Lo/KI$4;->a:Lo/KI;

    invoke-static {v1}, Lo/KI;->d(Lo/KI;)Lo/KI$TaskDescription;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Lo/KI$TaskDescription;->d(Landroid/view/View;I)V

    :cond_0
    return-void
.end method
