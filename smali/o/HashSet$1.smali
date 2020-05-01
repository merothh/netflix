.class Lo/HashSet$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/Dictionary;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/HashSet;->d(Lo/Dictionary;Ljava/util/concurrent/Executor;Lo/AbstractMap;)Lo/HashSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/Dictionary<",
        "TTResult;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lo/HashSet;

.field final synthetic b:Lo/Enumeration;

.field final synthetic c:Ljava/util/concurrent/Executor;

.field final synthetic d:Lo/Dictionary;

.field final synthetic e:Lo/AbstractMap;


# direct methods
.method constructor <init>(Lo/HashSet;Lo/Enumeration;Lo/Dictionary;Ljava/util/concurrent/Executor;Lo/AbstractMap;)V
    .locals 0

    .line 651
    iput-object p1, p0, Lo/HashSet$1;->a:Lo/HashSet;

    iput-object p2, p0, Lo/HashSet$1;->b:Lo/Enumeration;

    iput-object p3, p0, Lo/HashSet$1;->d:Lo/Dictionary;

    iput-object p4, p0, Lo/HashSet$1;->c:Ljava/util/concurrent/Executor;

    iput-object p5, p0, Lo/HashSet$1;->e:Lo/AbstractMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(Lo/HashSet;)Ljava/lang/Object;
    .locals 0

    .line 651
    invoke-virtual {p0, p1}, Lo/HashSet$1;->e(Lo/HashSet;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public e(Lo/HashSet;)Ljava/lang/Void;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/HashSet<",
            "TTResult;>;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .line 654
    iget-object v0, p0, Lo/HashSet$1;->b:Lo/Enumeration;

    iget-object v1, p0, Lo/HashSet$1;->d:Lo/Dictionary;

    iget-object v2, p0, Lo/HashSet$1;->c:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Lo/HashSet$1;->e:Lo/AbstractMap;

    invoke-static {v0, v1, p1, v2, v3}, Lo/HashSet;->c(Lo/Enumeration;Lo/Dictionary;Lo/HashSet;Ljava/util/concurrent/Executor;Lo/AbstractMap;)V

    const/4 p1, 0x0

    return-object p1
.end method
