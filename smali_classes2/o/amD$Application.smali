.class public final Lo/amD$Application;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/amD;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Application"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lo/amc;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Lo/amD$Application;-><init>()V

    return-void
.end method


# virtual methods
.method public final d()Lo/amD;
    .locals 1

    .line 58
    invoke-static {}, Lo/amD;->i()Lo/amD;

    move-result-object v0

    return-object v0
.end method
