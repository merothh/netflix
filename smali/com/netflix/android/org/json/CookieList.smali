.class public Lcom/netflix/android/org/json/CookieList;
.super Ljava/lang/Object;
.source "CookieList.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toJSONObject(Ljava/lang/String;)Lcom/netflix/android/org/json/JSONObject;
    .locals 5

    .prologue
    const/16 v4, 0x3d

    .line 50
    new-instance v0, Lcom/netflix/android/org/json/JSONObject;

    invoke-direct {v0}, Lcom/netflix/android/org/json/JSONObject;-><init>()V

    .line 51
    new-instance v1, Lcom/netflix/android/org/json/JSONTokener;

    invoke-direct {v1, p0}, Lcom/netflix/android/org/json/JSONTokener;-><init>(Ljava/lang/String;)V

    .line 52
    :goto_0
    invoke-virtual {v1}, Lcom/netflix/android/org/json/JSONTokener;->more()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 53
    invoke-virtual {v1, v4}, Lcom/netflix/android/org/json/JSONTokener;->nextTo(C)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/netflix/android/org/json/Cookie;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 54
    invoke-virtual {v1, v4}, Lcom/netflix/android/org/json/JSONTokener;->next(C)C

    .line 55
    const/16 v3, 0x3b

    invoke-virtual {v1, v3}, Lcom/netflix/android/org/json/JSONTokener;->nextTo(C)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/netflix/android/org/json/Cookie;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    .line 56
    invoke-virtual {v1}, Lcom/netflix/android/org/json/JSONTokener;->next()C

    goto :goto_0

    .line 58
    :cond_0
    return-object v0
.end method

.method public static toString(Lcom/netflix/android/org/json/JSONObject;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 72
    const/4 v0, 0x0

    .line 73
    invoke-virtual {p0}, Lcom/netflix/android/org/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 75
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 76
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 77
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 78
    invoke-virtual {p0, v3}, Lcom/netflix/android/org/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 79
    if-eqz v0, :cond_1

    .line 80
    const/16 v0, 0x3b

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 82
    :cond_1
    invoke-static {v3}, Lcom/netflix/android/org/json/Cookie;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 83
    const-string/jumbo v0, "="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 84
    invoke-virtual {p0, v3}, Lcom/netflix/android/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/android/org/json/Cookie;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 85
    const/4 v0, 0x1

    goto :goto_0

    .line 88
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
