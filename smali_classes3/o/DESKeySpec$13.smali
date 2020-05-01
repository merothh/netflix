.class Lo/DESKeySpec$13;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/DESKeySpec$Activity;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/DESKeySpec;->d(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:F

.field final synthetic c:Lo/DESKeySpec;


# direct methods
.method constructor <init>(Lo/DESKeySpec;F)V
    .locals 0

    .line 441
    iput-object p1, p0, Lo/DESKeySpec$13;->c:Lo/DESKeySpec;

    iput p2, p0, Lo/DESKeySpec$13;->b:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public e(Lo/DESedeKeySpec;)V
    .locals 1

    .line 444
    iget-object p1, p0, Lo/DESKeySpec$13;->c:Lo/DESKeySpec;

    iget v0, p0, Lo/DESKeySpec$13;->b:F

    invoke-virtual {p1, v0}, Lo/DESKeySpec;->d(F)V

    return-void
.end method
