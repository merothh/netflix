.class Lo/DESKeySpec$14;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/DESKeySpec$Activity;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/DESKeySpec;->b(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic c:Lo/DESKeySpec;

.field final synthetic d:I


# direct methods
.method constructor <init>(Lo/DESKeySpec;I)V
    .locals 0

    .line 457
    iput-object p1, p0, Lo/DESKeySpec$14;->c:Lo/DESKeySpec;

    iput p2, p0, Lo/DESKeySpec$14;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public e(Lo/DESedeKeySpec;)V
    .locals 1

    .line 460
    iget-object p1, p0, Lo/DESKeySpec$14;->c:Lo/DESKeySpec;

    iget v0, p0, Lo/DESKeySpec$14;->d:I

    invoke-virtual {p1, v0}, Lo/DESKeySpec;->b(I)V

    return-void
.end method
