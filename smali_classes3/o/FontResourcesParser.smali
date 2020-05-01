.class public Lo/FontResourcesParser;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/GradientColor;


# static fields
.field private static final c:Lo/FontResourcesParser;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    new-instance v0, Lo/FontResourcesParser;

    invoke-direct {v0}, Lo/FontResourcesParser;-><init>()V

    sput-object v0, Lo/FontResourcesParser;->c:Lo/FontResourcesParser;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d()Lo/FontResourcesParser;
    .locals 1

    .line 21
    sget-object v0, Lo/FontResourcesParser;->c:Lo/FontResourcesParser;

    return-object v0
.end method


# virtual methods
.method public e()J
    .locals 2

    .line 26
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method
