.class final Lo/sB$ActionBar;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/sB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ActionBar"
.end annotation


# instance fields
.field private a:Lorg/json/JSONObject;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Lo/sx;

.field private e:[B


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 562
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lo/sB$4;)V
    .locals 0

    .line 562
    invoke-direct {p0}, Lo/sB$ActionBar;-><init>()V

    return-void
.end method

.method static synthetic a(Lo/sB$ActionBar;)[B
    .locals 0

    .line 562
    iget-object p0, p0, Lo/sB$ActionBar;->e:[B

    return-object p0
.end method

.method static synthetic b(Lo/sB$ActionBar;)Ljava/lang/String;
    .locals 0

    .line 562
    iget-object p0, p0, Lo/sB$ActionBar;->b:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic b(Lo/sB$ActionBar;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 562
    iput-object p1, p0, Lo/sB$ActionBar;->b:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic c(Lo/sB$ActionBar;)Ljava/lang/String;
    .locals 0

    .line 562
    iget-object p0, p0, Lo/sB$ActionBar;->c:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic c(Lo/sB$ActionBar;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 562
    iput-object p1, p0, Lo/sB$ActionBar;->c:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic c(Lo/sB$ActionBar;Lo/sx;)Lo/sx;
    .locals 0

    .line 562
    iput-object p1, p0, Lo/sB$ActionBar;->d:Lo/sx;

    return-object p1
.end method

.method static synthetic c(Lo/sB$ActionBar;[B)[B
    .locals 0

    .line 562
    iput-object p1, p0, Lo/sB$ActionBar;->e:[B

    return-object p1
.end method

.method static synthetic d(Lo/sB$ActionBar;)Lo/sx;
    .locals 0

    .line 562
    iget-object p0, p0, Lo/sB$ActionBar;->d:Lo/sx;

    return-object p0
.end method

.method static synthetic d(Lo/sB$ActionBar;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 0

    .line 562
    iput-object p1, p0, Lo/sB$ActionBar;->a:Lorg/json/JSONObject;

    return-object p1
.end method

.method static synthetic e(Lo/sB$ActionBar;)Lorg/json/JSONObject;
    .locals 0

    .line 562
    iget-object p0, p0, Lo/sB$ActionBar;->a:Lorg/json/JSONObject;

    return-object p0
.end method
