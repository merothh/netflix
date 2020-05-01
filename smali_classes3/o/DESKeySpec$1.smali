.class Lo/DESKeySpec$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/DESKeySpec$Activity;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/DESKeySpec;->d(FF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:F

.field final synthetic d:F

.field final synthetic e:Lo/DESKeySpec;


# direct methods
.method constructor <init>(Lo/DESKeySpec;FF)V
    .locals 0

    .line 582
    iput-object p1, p0, Lo/DESKeySpec$1;->e:Lo/DESKeySpec;

    iput p2, p0, Lo/DESKeySpec$1;->d:F

    iput p3, p0, Lo/DESKeySpec$1;->b:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public e(Lo/DESedeKeySpec;)V
    .locals 2

    .line 585
    iget-object p1, p0, Lo/DESKeySpec$1;->e:Lo/DESKeySpec;

    iget v0, p0, Lo/DESKeySpec$1;->d:F

    iget v1, p0, Lo/DESKeySpec$1;->b:F

    invoke-virtual {p1, v0, v1}, Lo/DESKeySpec;->d(FF)V

    return-void
.end method
