.class final Lo/anx;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/anr;


# instance fields
.field private final a:Lo/ans;

.field private final c:Ljava/lang/CharSequence;

.field private final e:Ljava/util/regex/Matcher;


# direct methods
.method public constructor <init>(Ljava/util/regex/Matcher;Ljava/lang/CharSequence;)V
    .locals 1

    const-string v0, "matcher"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "input"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 267
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/anx;->e:Ljava/util/regex/Matcher;

    iput-object p2, p0, Lo/anx;->c:Ljava/lang/CharSequence;

    .line 274
    new-instance p1, Lo/anx$TaskDescription;

    invoke-direct {p1, p0}, Lo/anx$TaskDescription;-><init>(Lo/anx;)V

    check-cast p1, Lo/ans;

    iput-object p1, p0, Lo/anx;->a:Lo/ans;

    return-void
.end method

.method public static final synthetic c(Lo/anx;)Ljava/util/regex/MatchResult;
    .locals 0

    .line 267
    invoke-direct {p0}, Lo/anx;->e()Ljava/util/regex/MatchResult;

    move-result-object p0

    return-object p0
.end method

.method private final e()Ljava/util/regex/MatchResult;
    .locals 1

    .line 268
    iget-object v0, p0, Lo/anx;->e:Ljava/util/regex/Matcher;

    check-cast v0, Ljava/util/regex/MatchResult;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 2

    .line 272
    invoke-direct {p0}, Lo/anx;->e()Ljava/util/regex/MatchResult;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/regex/MatchResult;->group()Ljava/lang/String;

    move-result-object v0

    const-string v1, "matchResult.group()"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
