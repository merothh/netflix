.class Lo/LY$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/LY;->x()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lo/LY;


# direct methods
.method constructor <init>(Lo/LY;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lo/LY$4;->b:Lo/LY;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 122
    iget-object p1, p0, Lo/LY$4;->b:Lo/LY;

    invoke-static {p1}, Lo/LY;->e(Lo/LY;)V

    return-void
.end method
