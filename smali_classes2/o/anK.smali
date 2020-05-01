.class final Lo/anK;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/apc;


# static fields
.field public static final e:Lo/anK;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 427
    new-instance v0, Lo/anK;

    invoke-direct {v0}, Lo/anK;-><init>()V

    sput-object v0, Lo/anK;->e:Lo/anK;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 427
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Active"

    return-object v0
.end method
