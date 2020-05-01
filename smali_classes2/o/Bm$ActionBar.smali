.class public Lo/Bm$ActionBar;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/Bm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ActionBar"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lo/Bl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo/Bm$ActionBar;->e:Ljava/util/Map;

    .line 45
    iput-object p1, p0, Lo/Bm$ActionBar;->d:Ljava/lang/String;

    return-void
.end method

.method static synthetic b(Lo/Bm$ActionBar;)Ljava/util/Map;
    .locals 0

    .line 39
    iget-object p0, p0, Lo/Bm$ActionBar;->e:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic c(Lo/Bm$ActionBar;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 39
    iput-object p1, p0, Lo/Bm$ActionBar;->a:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public b()Lo/Bm;
    .locals 4

    .line 49
    new-instance v0, Lo/Bm;

    new-instance v1, Ljava/util/HashMap;

    iget-object v2, p0, Lo/Bm$ActionBar;->e:Ljava/util/Map;

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iget-object v2, p0, Lo/Bm$ActionBar;->a:Ljava/lang/String;

    iget-object v3, p0, Lo/Bm$ActionBar;->d:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lo/Bm;-><init>(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public c(Ljava/lang/String;)Lo/Bm$ActionBar;
    .locals 0

    .line 53
    iput-object p1, p0, Lo/Bm$ActionBar;->a:Ljava/lang/String;

    return-object p0
.end method

.method public c(Ljava/lang/String;Lo/Bl;)Lo/Bm$ActionBar;
    .locals 1

    .line 58
    iget-object v0, p0, Lo/Bm$ActionBar;->e:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method
