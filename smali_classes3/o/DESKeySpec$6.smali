.class Lo/DESKeySpec$6;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/DESKeySpec$Activity;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/DESKeySpec;->c(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic e:Lo/DESKeySpec;


# direct methods
.method constructor <init>(Lo/DESKeySpec;I)V
    .locals 0

    .line 418
    iput-object p1, p0, Lo/DESKeySpec$6;->e:Lo/DESKeySpec;

    iput p2, p0, Lo/DESKeySpec$6;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public e(Lo/DESedeKeySpec;)V
    .locals 1

    .line 421
    iget-object p1, p0, Lo/DESKeySpec$6;->e:Lo/DESKeySpec;

    iget v0, p0, Lo/DESKeySpec$6;->a:I

    invoke-virtual {p1, v0}, Lo/DESKeySpec;->c(I)V

    return-void
.end method
