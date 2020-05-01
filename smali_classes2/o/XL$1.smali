.class final Lo/XL$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/XL;-><init>(Landroid/view/ViewGroup;Lo/Xx;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic d:Lo/XL;


# direct methods
.method constructor <init>(Lo/XL;)V
    .locals 0

    iput-object p1, p0, Lo/XL$1;->d:Lo/XL;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 26
    iget-object p1, p0, Lo/XL$1;->d:Lo/XL;

    invoke-virtual {p1}, Lo/XL;->getAdapterPosition()I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 28
    iget-object v0, p0, Lo/XL$1;->d:Lo/XL;

    invoke-virtual {v0, p1}, Lo/XL;->c(I)V

    :cond_0
    return-void
.end method
