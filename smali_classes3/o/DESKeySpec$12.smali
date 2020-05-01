.class Lo/DESKeySpec$12;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/DESKeySpec$Activity;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/DESKeySpec;->c(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic d:Lo/DESKeySpec;


# direct methods
.method constructor <init>(Lo/DESKeySpec;Ljava/lang/String;)V
    .locals 0

    .line 518
    iput-object p1, p0, Lo/DESKeySpec$12;->d:Lo/DESKeySpec;

    iput-object p2, p0, Lo/DESKeySpec$12;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public e(Lo/DESedeKeySpec;)V
    .locals 1

    .line 521
    iget-object p1, p0, Lo/DESKeySpec$12;->d:Lo/DESKeySpec;

    iget-object v0, p0, Lo/DESKeySpec$12;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lo/DESKeySpec;->c(Ljava/lang/String;)V

    return-void
.end method
