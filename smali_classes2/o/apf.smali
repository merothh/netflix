.class public final Lo/apf;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/anW;


# static fields
.field public static final e:Lo/apf;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 626
    new-instance v0, Lo/apf;

    invoke-direct {v0}, Lo/apf;-><init>()V

    sput-object v0, Lo/apf;->e:Lo/apf;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 626
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public e(Ljava/lang/Throwable;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "NonDisposableHandle"

    return-object v0
.end method
