.class Lo/DESKeySpec$11;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/DESKeySpec$Activity;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/DESKeySpec;->d(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic c:Lo/DESKeySpec;

.field final synthetic e:Ljava/lang/String;


# direct methods
.method constructor <init>(Lo/DESKeySpec;Ljava/lang/String;)V
    .locals 0

    .line 497
    iput-object p1, p0, Lo/DESKeySpec$11;->c:Lo/DESKeySpec;

    iput-object p2, p0, Lo/DESKeySpec$11;->e:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public e(Lo/DESedeKeySpec;)V
    .locals 1

    .line 500
    iget-object p1, p0, Lo/DESKeySpec$11;->c:Lo/DESKeySpec;

    iget-object v0, p0, Lo/DESKeySpec$11;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lo/DESKeySpec;->d(Ljava/lang/String;)V

    return-void
.end method
