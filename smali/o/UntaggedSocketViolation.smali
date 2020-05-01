.class public final Lo/UntaggedSocketViolation;
.super Lo/MessagePdu;
.source ""

# interfaces
.implements Lo/NetworkViolation;
.implements Ljava/io/Closeable;


# instance fields
.field private final a:Lcom/google/gson/Gson;

.field private final b:Lo/WebViewMethodCalledOnWrongThreadViolation;

.field private final d:Lo/CheckBoxPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/gson/Gson;Lo/WebViewMethodCalledOnWrongThreadViolation;)V
    .locals 1

    const-string v0, "ctx"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "gson"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "config"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "SqliteDiskCache"

    .line 30
    invoke-direct {p0, v0}, Lo/MessagePdu;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lo/UntaggedSocketViolation;->a:Lcom/google/gson/Gson;

    iput-object p3, p0, Lo/UntaggedSocketViolation;->b:Lo/WebViewMethodCalledOnWrongThreadViolation;

    .line 36
    :try_start_0
    new-instance p2, Lo/CheckBoxPreference;

    new-instance p3, Lo/GenericInflater;

    iget-object v0, p0, Lo/UntaggedSocketViolation;->b:Lo/WebViewMethodCalledOnWrongThreadViolation;

    invoke-direct {p3, p1, v0}, Lo/GenericInflater;-><init>(Landroid/content/Context;Lo/WebViewMethodCalledOnWrongThreadViolation;)V

    invoke-direct {p2, p3}, Lo/CheckBoxPreference;-><init>(Lo/GenericInflater;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 38
    move-object p2, p0

    check-cast p2, Lo/MessagePdu;

    .line 42
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p2

    sget-object p3, Lcom/netflix/mediaclient/api/logging/error/ErrorType;->c:Lcom/netflix/mediaclient/api/logging/error/ErrorType;

    check-cast p1, Ljava/lang/Throwable;

    invoke-interface {p2, p3, p1}, Lo/SpinnerAdapter;->a(Lcom/netflix/mediaclient/api/logging/error/ErrorType;Ljava/lang/Throwable;)V

    const/4 p2, 0x0

    .line 35
    :goto_0
    iput-object p2, p0, Lo/UntaggedSocketViolation;->d:Lo/CheckBoxPreference;

    return-void
.end method

.method public static final synthetic d(Lo/UntaggedSocketViolation;)Lo/CheckBoxPreference;
    .locals 0

    .line 26
    iget-object p0, p0, Lo/UntaggedSocketViolation;->d:Lo/CheckBoxPreference;

    return-object p0
.end method


# virtual methods
.method public a(J)Lo/SqliteObjectLeakedViolation;
    .locals 8

    .line 135
    invoke-static {p0}, Lo/UntaggedSocketViolation;->d(Lo/UntaggedSocketViolation;)Lo/CheckBoxPreference;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 136
    invoke-static {p0}, Lo/UntaggedSocketViolation;->d(Lo/UntaggedSocketViolation;)Lo/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0}, Lo/CheckBoxPreference;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    :try_start_0
    invoke-static {p0}, Lo/UntaggedSocketViolation;->d(Lo/UntaggedSocketViolation;)Lo/CheckBoxPreference;

    move-result-object v3

    .line 54
    new-instance v0, Lo/PreferenceDataStore;

    iget-object v4, p0, Lo/UntaggedSocketViolation;->a:Lcom/google/gson/Gson;

    iget-object v5, p0, Lo/UntaggedSocketViolation;->b:Lo/WebViewMethodCalledOnWrongThreadViolation;

    move-object v2, v0

    move-wide v6, p1

    invoke-direct/range {v2 .. v7}, Lo/PreferenceDataStore;-><init>(Lo/CheckBoxPreference;Lcom/google/gson/Gson;Lo/WebViewMethodCalledOnWrongThreadViolation;J)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 140
    move-object p2, p0

    check-cast p2, Lo/MessagePdu;

    .line 148
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p2

    sget-object v0, Lcom/netflix/mediaclient/api/logging/error/ErrorType;->c:Lcom/netflix/mediaclient/api/logging/error/ErrorType;

    check-cast p1, Ljava/lang/Throwable;

    invoke-interface {p2, v0, p1}, Lo/SpinnerAdapter;->a(Lcom/netflix/mediaclient/api/logging/error/ErrorType;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 152
    :cond_0
    new-instance p1, Landroid/database/SQLException;

    const-string p2, "database is not opened"

    invoke-direct {p1, p2}, Landroid/database/SQLException;-><init>(Ljava/lang/String;)V

    .line 153
    move-object p2, p0

    check-cast p2, Lo/MessagePdu;

    .line 161
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p2

    .line 162
    sget-object v0, Lcom/netflix/mediaclient/api/logging/error/ErrorType;->c:Lcom/netflix/mediaclient/api/logging/error/ErrorType;

    .line 163
    check-cast p1, Ljava/lang/Throwable;

    .line 161
    invoke-interface {p2, v0, p1}, Lo/SpinnerAdapter;->a(Lcom/netflix/mediaclient/api/logging/error/ErrorType;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    .line 135
    check-cast v1, Lo/SqliteObjectLeakedViolation;

    goto :goto_1

    .line 55
    :cond_2
    sget-object p1, Lo/UnbufferedIoViolation;->a:Lo/UnbufferedIoViolation;

    move-object v1, p1

    check-cast v1, Lo/SqliteObjectLeakedViolation;

    :goto_1
    return-object v1
.end method

.method public c(J)Lo/InstanceCountViolation;
    .locals 3

    .line 169
    invoke-static {p0}, Lo/UntaggedSocketViolation;->d(Lo/UntaggedSocketViolation;)Lo/CheckBoxPreference;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 170
    invoke-static {p0}, Lo/UntaggedSocketViolation;->d(Lo/UntaggedSocketViolation;)Lo/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0}, Lo/CheckBoxPreference;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    :try_start_0
    invoke-static {p0}, Lo/UntaggedSocketViolation;->d(Lo/UntaggedSocketViolation;)Lo/CheckBoxPreference;

    move-result-object v0

    .line 59
    new-instance v2, Lo/EditTextPreference;

    invoke-direct {v2, v0, p1, p2}, Lo/EditTextPreference;-><init>(Lo/CheckBoxPreference;J)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    goto :goto_0

    :catch_0
    move-exception p1

    .line 174
    move-object p2, p0

    check-cast p2, Lo/MessagePdu;

    .line 182
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p2

    sget-object v0, Lcom/netflix/mediaclient/api/logging/error/ErrorType;->c:Lcom/netflix/mediaclient/api/logging/error/ErrorType;

    check-cast p1, Ljava/lang/Throwable;

    invoke-interface {p2, v0, p1}, Lo/SpinnerAdapter;->a(Lcom/netflix/mediaclient/api/logging/error/ErrorType;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 186
    :cond_0
    new-instance p1, Landroid/database/SQLException;

    const-string p2, "database is not opened"

    invoke-direct {p1, p2}, Landroid/database/SQLException;-><init>(Ljava/lang/String;)V

    .line 187
    move-object p2, p0

    check-cast p2, Lo/MessagePdu;

    .line 195
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p2

    .line 196
    sget-object v0, Lcom/netflix/mediaclient/api/logging/error/ErrorType;->c:Lcom/netflix/mediaclient/api/logging/error/ErrorType;

    .line 197
    check-cast p1, Ljava/lang/Throwable;

    .line 195
    invoke-interface {p2, v0, p1}, Lo/SpinnerAdapter;->a(Lcom/netflix/mediaclient/api/logging/error/ErrorType;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    .line 169
    check-cast v1, Lo/InstanceCountViolation;

    goto :goto_1

    .line 60
    :cond_2
    sget-object p1, Lo/UnbufferedIoViolation;->a:Lo/UnbufferedIoViolation;

    move-object v1, p1

    check-cast v1, Lo/InstanceCountViolation;

    :goto_1
    return-object v1
.end method

.method public close()V
    .locals 1

    .line 66
    iget-object v0, p0, Lo/UntaggedSocketViolation;->d:Lo/CheckBoxPreference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lo/CheckBoxPreference;->b()V

    :cond_0
    return-void
.end method

.method public d(J)Lo/NonSdkApiUsedViolation;
    .locals 4

    .line 101
    invoke-static {p0}, Lo/UntaggedSocketViolation;->d(Lo/UntaggedSocketViolation;)Lo/CheckBoxPreference;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 102
    invoke-static {p0}, Lo/UntaggedSocketViolation;->d(Lo/UntaggedSocketViolation;)Lo/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0}, Lo/CheckBoxPreference;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    :try_start_0
    invoke-static {p0}, Lo/UntaggedSocketViolation;->d(Lo/UntaggedSocketViolation;)Lo/CheckBoxPreference;

    move-result-object v0

    .line 49
    new-instance v2, Lo/ListPreference;

    iget-object v3, p0, Lo/UntaggedSocketViolation;->b:Lo/WebViewMethodCalledOnWrongThreadViolation;

    invoke-direct {v2, v0, v3, p1, p2}, Lo/ListPreference;-><init>(Lo/CheckBoxPreference;Lo/WebViewMethodCalledOnWrongThreadViolation;J)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    goto :goto_0

    :catch_0
    move-exception p1

    .line 106
    move-object p2, p0

    check-cast p2, Lo/MessagePdu;

    .line 114
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p2

    sget-object v0, Lcom/netflix/mediaclient/api/logging/error/ErrorType;->c:Lcom/netflix/mediaclient/api/logging/error/ErrorType;

    check-cast p1, Ljava/lang/Throwable;

    invoke-interface {p2, v0, p1}, Lo/SpinnerAdapter;->a(Lcom/netflix/mediaclient/api/logging/error/ErrorType;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 118
    :cond_0
    new-instance p1, Landroid/database/SQLException;

    const-string p2, "database is not opened"

    invoke-direct {p1, p2}, Landroid/database/SQLException;-><init>(Ljava/lang/String;)V

    .line 119
    move-object p2, p0

    check-cast p2, Lo/MessagePdu;

    .line 127
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p2

    .line 128
    sget-object v0, Lcom/netflix/mediaclient/api/logging/error/ErrorType;->c:Lcom/netflix/mediaclient/api/logging/error/ErrorType;

    .line 129
    check-cast p1, Ljava/lang/Throwable;

    .line 127
    invoke-interface {p2, v0, p1}, Lo/SpinnerAdapter;->a(Lcom/netflix/mediaclient/api/logging/error/ErrorType;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    .line 101
    check-cast v1, Lo/NonSdkApiUsedViolation;

    goto :goto_1

    .line 50
    :cond_2
    sget-object p1, Lo/UnbufferedIoViolation;->a:Lo/UnbufferedIoViolation;

    move-object v1, p1

    check-cast v1, Lo/NonSdkApiUsedViolation;

    :goto_1
    return-object v1
.end method

.method public e()Lo/ServiceConnectionLeakedViolation;
    .locals 4

    .line 203
    invoke-static {p0}, Lo/UntaggedSocketViolation;->d(Lo/UntaggedSocketViolation;)Lo/CheckBoxPreference;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 204
    invoke-static {p0}, Lo/UntaggedSocketViolation;->d(Lo/UntaggedSocketViolation;)Lo/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0}, Lo/CheckBoxPreference;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 206
    :try_start_0
    invoke-static {p0}, Lo/UntaggedSocketViolation;->d(Lo/UntaggedSocketViolation;)Lo/CheckBoxPreference;

    move-result-object v0

    .line 63
    new-instance v2, Lo/DialogPreference;

    invoke-direct {v2, v0}, Lo/DialogPreference;-><init>(Lo/CheckBoxPreference;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    goto :goto_0

    :catch_0
    move-exception v0

    .line 208
    move-object v2, p0

    check-cast v2, Lo/MessagePdu;

    .line 216
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v2

    sget-object v3, Lcom/netflix/mediaclient/api/logging/error/ErrorType;->c:Lcom/netflix/mediaclient/api/logging/error/ErrorType;

    check-cast v0, Ljava/lang/Throwable;

    invoke-interface {v2, v3, v0}, Lo/SpinnerAdapter;->a(Lcom/netflix/mediaclient/api/logging/error/ErrorType;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 220
    :cond_0
    new-instance v0, Landroid/database/SQLException;

    const-string v2, "database is not opened"

    invoke-direct {v0, v2}, Landroid/database/SQLException;-><init>(Ljava/lang/String;)V

    .line 221
    move-object v2, p0

    check-cast v2, Lo/MessagePdu;

    .line 229
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v2

    .line 230
    sget-object v3, Lcom/netflix/mediaclient/api/logging/error/ErrorType;->c:Lcom/netflix/mediaclient/api/logging/error/ErrorType;

    .line 231
    check-cast v0, Ljava/lang/Throwable;

    .line 229
    invoke-interface {v2, v3, v0}, Lo/SpinnerAdapter;->a(Lcom/netflix/mediaclient/api/logging/error/ErrorType;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    .line 203
    check-cast v1, Lo/ServiceConnectionLeakedViolation;

    goto :goto_1

    .line 63
    :cond_2
    sget-object v0, Lo/UnbufferedIoViolation;->a:Lo/UnbufferedIoViolation;

    move-object v1, v0

    check-cast v1, Lo/ServiceConnectionLeakedViolation;

    :goto_1
    return-object v1
.end method
