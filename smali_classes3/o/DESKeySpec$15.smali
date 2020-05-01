.class Lo/DESKeySpec$15;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/DESKeySpec$Activity;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/DESKeySpec;->c(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/DESKeySpec;

.field final synthetic d:F


# direct methods
.method constructor <init>(Lo/DESKeySpec;F)V
    .locals 0

    .line 480
    iput-object p1, p0, Lo/DESKeySpec$15;->a:Lo/DESKeySpec;

    iput p2, p0, Lo/DESKeySpec$15;->d:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public e(Lo/DESedeKeySpec;)V
    .locals 1

    .line 483
    iget-object p1, p0, Lo/DESKeySpec$15;->a:Lo/DESKeySpec;

    iget v0, p0, Lo/DESKeySpec$15;->d:F

    invoke-virtual {p1, v0}, Lo/DESKeySpec;->c(F)V

    return-void
.end method
