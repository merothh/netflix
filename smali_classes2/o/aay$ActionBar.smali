.class public final Lo/aay$ActionBar;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/aay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ActionBar"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lo/amc;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Lo/aay$ActionBar;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 13
    const-class v0, Lo/n;

    new-instance v1, Lo/aay;

    invoke-direct {v1}, Lo/aay;-><init>()V

    invoke-static {v0, v1}, Lo/TextViewMetrics;->b(Ljava/lang/Class;Ljava/lang/Object;)V

    return-void
.end method
