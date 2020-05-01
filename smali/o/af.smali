.class public final Lo/af;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ajS;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/ajS<",
        "Lo/ai;",
        ">;"
    }
.end annotation


# static fields
.field private static final d:Lo/af;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    new-instance v0, Lo/af;

    invoke-direct {v0}, Lo/af;-><init>()V

    sput-object v0, Lo/af;->d:Lo/af;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d()Lo/af;
    .locals 1

    .line 19
    sget-object v0, Lo/af;->d:Lo/af;

    return-object v0
.end method


# virtual methods
.method public a()Lo/ai;
    .locals 1

    .line 15
    new-instance v0, Lo/ai;

    invoke-direct {v0}, Lo/ai;-><init>()V

    return-object v0
.end method

.method public synthetic get()Ljava/lang/Object;
    .locals 1

    .line 6
    invoke-virtual {p0}, Lo/af;->a()Lo/ai;

    move-result-object v0

    return-object v0
.end method
