.class public final Lo/CE$Application;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/CE;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Application"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lo/amc;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Lo/CE$Application;-><init>()V

    return-void
.end method


# virtual methods
.method public final d()I
    .locals 1

    .line 16
    invoke-static {}, Lo/CE;->e()I

    move-result v0

    return v0
.end method

.method public final e()I
    .locals 1

    .line 15
    invoke-static {}, Lo/CE;->d()I

    move-result v0

    return v0
.end method
