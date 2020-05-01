.class Lo/DESKeySpec$10;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/DESKeySpec$Activity;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/DESKeySpec;->b(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic c:Lo/DESKeySpec;

.field final synthetic e:F


# direct methods
.method constructor <init>(Lo/DESKeySpec;F)V
    .locals 0

    .line 672
    iput-object p1, p0, Lo/DESKeySpec$10;->c:Lo/DESKeySpec;

    iput p2, p0, Lo/DESKeySpec$10;->e:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public e(Lo/DESedeKeySpec;)V
    .locals 1

    .line 675
    iget-object p1, p0, Lo/DESKeySpec$10;->c:Lo/DESKeySpec;

    iget v0, p0, Lo/DESKeySpec$10;->e:F

    invoke-virtual {p1, v0}, Lo/DESKeySpec;->b(F)V

    return-void
.end method
