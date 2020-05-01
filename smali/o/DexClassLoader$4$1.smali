.class Lo/DexClassLoader$4$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/DexClassLoader$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic c:Ljava/lang/Object;

.field final synthetic e:Lo/DexClassLoader$4;


# direct methods
.method constructor <init>(Lo/DexClassLoader$4;Ljava/lang/Object;)V
    .locals 0

    .line 147
    iput-object p1, p0, Lo/DexClassLoader$4$1;->e:Lo/DexClassLoader$4;

    iput-object p2, p0, Lo/DexClassLoader$4$1;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 150
    iget-object v0, p0, Lo/DexClassLoader$4$1;->e:Lo/DexClassLoader$4;

    iget-object v0, v0, Lo/DexClassLoader$4;->e:Lo/DexClassLoader$ActionBar;

    iget-object v1, p0, Lo/DexClassLoader$4$1;->c:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lo/DexClassLoader$ActionBar;->c(Ljava/lang/Object;)V

    return-void
.end method
