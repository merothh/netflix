.class public final Lo/Hyphenator;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final b:Lo/BidiFormatter;


# direct methods
.method public constructor <init>(Lo/BidiFormatter;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/Hyphenator;->b:Lo/BidiFormatter;

    return-void
.end method


# virtual methods
.method public final a()Lo/BidiFormatter;
    .locals 1

    .line 5
    iget-object v0, p0, Lo/Hyphenator;->b:Lo/BidiFormatter;

    return-object v0
.end method

.method public final d()Z
    .locals 1

    .line 8
    iget-object v0, p0, Lo/Hyphenator;->b:Lo/BidiFormatter;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lo/BidiFormatter;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
