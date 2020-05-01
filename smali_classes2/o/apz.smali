.class public final Lo/apz;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final c:Ljava/lang/Object;

.field public static final e:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 41
    new-instance v0, Lo/apN;

    const-string v1, "NO_DECISION"

    invoke-direct {v0, v1}, Lo/apN;-><init>(Ljava/lang/String;)V

    sput-object v0, Lo/apz;->c:Ljava/lang/Object;

    .line 115
    new-instance v0, Lo/apN;

    const-string v1, "RETRY_ATOMIC"

    invoke-direct {v0, v1}, Lo/apN;-><init>(Ljava/lang/String;)V

    sput-object v0, Lo/apz;->e:Ljava/lang/Object;

    return-void
.end method

.method public static final synthetic c()Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object v0, Lo/apz;->c:Ljava/lang/Object;

    return-object v0
.end method
