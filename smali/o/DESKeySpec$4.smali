.class Lo/DESKeySpec$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/DESKeySpec$Activity;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/DESKeySpec;->b(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:I

.field final synthetic c:Lo/DESKeySpec;

.field final synthetic d:I


# direct methods
.method constructor <init>(Lo/DESKeySpec;II)V
    .locals 0

    .line 562
    iput-object p1, p0, Lo/DESKeySpec$4;->c:Lo/DESKeySpec;

    iput p2, p0, Lo/DESKeySpec$4;->b:I

    iput p3, p0, Lo/DESKeySpec$4;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public e(Lo/DESedeKeySpec;)V
    .locals 2

    .line 565
    iget-object p1, p0, Lo/DESKeySpec$4;->c:Lo/DESKeySpec;

    iget v0, p0, Lo/DESKeySpec$4;->b:I

    iget v1, p0, Lo/DESKeySpec$4;->d:I

    invoke-virtual {p1, v0, v1}, Lo/DESKeySpec;->b(II)V

    return-void
.end method
