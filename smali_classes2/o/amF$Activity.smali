.class public final Lo/amF$Activity;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/amF;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Activity"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lo/amc;)V
    .locals 0

    .line 113
    invoke-direct {p0}, Lo/amF$Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(III)Lo/amF;
    .locals 1

    .line 122
    new-instance v0, Lo/amF;

    invoke-direct {v0, p1, p2, p3}, Lo/amF;-><init>(III)V

    return-object v0
.end method
