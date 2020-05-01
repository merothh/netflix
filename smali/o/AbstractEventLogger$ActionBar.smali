.class public final Lo/AbstractEventLogger$ActionBar;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/AbstractEventLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ActionBar"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lo/amc;)V
    .locals 0

    .line 7
    invoke-direct {p0}, Lo/AbstractEventLogger$ActionBar;-><init>()V

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/regex/Pattern;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 11
    move-object v1, p1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const/4 v3, 0x1

    if-lez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_4

    if-eqz p4, :cond_1

    .line 14
    invoke-virtual {p4, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p4

    invoke-virtual {p4}, Ljava/util/regex/Matcher;->matches()Z

    move-result p4

    goto :goto_1

    :cond_1
    const/4 p4, 0x1

    :goto_1
    if-eqz p2, :cond_2

    .line 16
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {v1, p2}, Lo/amh;->a(II)I

    move-result p2

    if-gez p2, :cond_2

    const/4 p4, 0x0

    :cond_2
    if-eqz p3, :cond_3

    .line 20
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {p1, p2}, Lo/amh;->a(II)I

    move-result p1

    if-lez p1, :cond_3

    goto :goto_2

    :cond_3
    move v0, p4

    :cond_4
    :goto_2
    return v0
.end method
