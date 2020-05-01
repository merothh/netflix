.class final Lo/aaR$TaskDescription$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/aaR$TaskDescription;-><init>(Lo/aaR;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final c:Lo/aaR$TaskDescription$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo/aaR$TaskDescription$2;

    invoke-direct {v0}, Lo/aaR$TaskDescription$2;-><init>()V

    sput-object v0, Lo/aaR$TaskDescription$2;->c:Lo/aaR$TaskDescription$2;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lo/aaU$TaskDescription;",
            ">;"
        }
    .end annotation

    .line 54
    new-instance v0, Lo/aaU;

    invoke-direct {v0}, Lo/aaU;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lo/aaU;->b(Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1

    .line 50
    invoke-virtual {p0}, Lo/aaR$TaskDescription$2;->a()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
