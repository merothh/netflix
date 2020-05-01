.class public final Lo/aqa;
.super Lo/aqj;
.source ""


# static fields
.field public static final b:Lo/aqa;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 112
    new-instance v0, Lo/aqa;

    invoke-direct {v0}, Lo/aqa;-><init>()V

    sput-object v0, Lo/aqa;->b:Lo/aqa;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 112
    invoke-direct {p0}, Lo/aqj;-><init>()V

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    .line 113
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    return-wide v0
.end method
