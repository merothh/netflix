.class Lo/DESKeySpec$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/DESKeySpec$Activity;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/DESKeySpec;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/DESKeySpec;

.field final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lo/DESKeySpec;Ljava/lang/String;)V
    .locals 0

    .line 540
    iput-object p1, p0, Lo/DESKeySpec$2;->a:Lo/DESKeySpec;

    iput-object p2, p0, Lo/DESKeySpec$2;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public e(Lo/DESedeKeySpec;)V
    .locals 1

    .line 543
    iget-object p1, p0, Lo/DESKeySpec$2;->a:Lo/DESKeySpec;

    iget-object v0, p0, Lo/DESKeySpec$2;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lo/DESKeySpec;->a(Ljava/lang/String;)V

    return-void
.end method
