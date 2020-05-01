.class Lo/RE$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/RE;->a(Landroid/view/ViewGroup;Lo/RF;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lo/RF;

.field final synthetic c:Lo/RE;


# direct methods
.method constructor <init>(Lo/RE;Lo/RF;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lo/RE$2;->c:Lo/RE;

    iput-object p2, p0, Lo/RE$2;->b:Lo/RF;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 63
    iget-object p1, p0, Lo/RE$2;->b:Lo/RF;

    invoke-virtual {p1}, Lo/RF;->b()V

    .line 64
    iget-object p1, p0, Lo/RE$2;->b:Lo/RF;

    invoke-virtual {p1}, Lo/RF;->dismiss()V

    return-void
.end method
