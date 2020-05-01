.class final Lo/FV$Application;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/FV;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Application"
.end annotation


# static fields
.field public static final d:Lo/FV$Application;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 62
    new-instance v0, Lo/FV$Application;

    invoke-direct {v0}, Lo/FV$Application;-><init>()V

    sput-object v0, Lo/FV$Application;->d:Lo/FV$Application;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
