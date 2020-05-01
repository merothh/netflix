.class public Lo/Settings;
.super Ljava/lang/Object;
.source ""


# direct methods
.method private static c(Lo/agi;Lo/RecommendationInfo;Ljava/lang/String;Lo/Browser;J)Lo/agi;
    .locals 4

    .line 128
    instance-of v0, p0, Lo/BlockedNumberContract;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    instance-of v2, p0, Lo/OneTimeUseBuilder;

    if-nez v2, :cond_1

    instance-of v2, p0, Lo/DocumentsProvider;

    if-eqz v2, :cond_0

    goto :goto_0

    .line 190
    :cond_0
    instance-of p2, p0, Lo/SearchIndexableData;

    if-eqz p2, :cond_a

    move-object p2, p0

    check-cast p2, Lo/SearchIndexableData;

    invoke-virtual {p2}, Lo/SearchIndexableData;->e()Ljava/lang/Object;

    move-result-object p3

    instance-of p3, p3, Lo/ContactsInternal;

    if-eqz p3, :cond_a

    if-eqz p1, :cond_2

    .line 195
    invoke-virtual {p2}, Lo/SearchIndexableData;->e()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lo/DocumentsProvider;

    .line 196
    invoke-static {p1}, Lo/DocumentsContract;->c(Lo/RecommendationInfo;)Lcom/google/gson/JsonElement;

    move-result-object p1

    .line 197
    invoke-interface {p2, p1}, Lo/DocumentsProvider;->populate(Lcom/google/gson/JsonElement;)V

    goto/16 :goto_3

    :cond_1
    :goto_0
    if-nez p1, :cond_3

    if-eqz v0, :cond_2

    if-eqz p3, :cond_2

    .line 135
    check-cast p0, Lo/BlockedNumberContract;

    invoke-virtual {p0}, Lo/BlockedNumberContract;->getTimestamp()J

    move-result-wide p0

    cmp-long v0, p0, p4

    if-ltz v0, :cond_2

    .line 136
    invoke-interface {p3, p2}, Lo/Browser;->e(Ljava/lang/String;)V

    :cond_2
    move-object p0, v1

    goto/16 :goto_3

    .line 142
    :cond_3
    instance-of p4, p0, Lo/OneTimeUseBuilder;

    if-eqz p4, :cond_6

    .line 143
    move-object p4, p0

    check-cast p4, Lo/OneTimeUseBuilder;

    .line 144
    instance-of p5, p1, Lo/PrinterDiscoverySession;

    if-eqz p5, :cond_4

    .line 145
    invoke-virtual {p1}, Lo/RecommendationInfo;->k()Lo/PrinterDiscoverySession;

    move-result-object p5

    invoke-static {p5}, Lo/SearchIndexableResource;->b(Lo/PrinterDiscoverySession;)Lo/TextInputTimePickerView;

    move-result-object p5

    .line 146
    invoke-virtual {p4, p5}, Lo/OneTimeUseBuilder;->a(Lo/TextInputTimePickerView;)V

    goto :goto_1

    .line 147
    :cond_4
    instance-of p5, p1, Lo/VolumePreference;

    if-eqz p5, :cond_5

    .line 149
    sget-object p5, Lo/MultiSelectListPreference;->b:Lo/MultiSelectListPreference;

    invoke-virtual {p1}, Lo/RecommendationInfo;->l()Lo/VolumePreference;

    move-result-object v0

    invoke-virtual {p5, v0}, Lo/MultiSelectListPreference;->b(Lo/VolumePreference;)Lcom/google/gson/JsonArray;

    move-result-object p5

    .line 150
    invoke-static {p5}, Lo/SearchIndexableResource;->b(Lcom/google/gson/JsonArray;)Lo/TextInputTimePickerView;

    move-result-object p5

    invoke-virtual {p4, p5}, Lo/OneTimeUseBuilder;->a(Lo/TextInputTimePickerView;)V

    goto :goto_1

    .line 152
    :cond_5
    invoke-static {}, Lo/SettingsSlicesContract;->b()Lo/SettingsSlicesContract;

    move-result-object p0

    :goto_1
    if-eqz p3, :cond_7

    .line 155
    invoke-interface {p3, p2, p0}, Lo/Browser;->c(Ljava/lang/String;Lo/agi;)V

    goto :goto_2

    .line 157
    :cond_6
    instance-of p4, p0, Lo/DocumentsProvider;

    if-eqz p4, :cond_7

    .line 159
    move-object p4, p0

    check-cast p4, Lo/DocumentsProvider;

    .line 160
    invoke-static {p1}, Lo/DocumentsContract;->c(Lo/RecommendationInfo;)Lcom/google/gson/JsonElement;

    move-result-object p5

    .line 161
    invoke-interface {p4, p5}, Lo/DocumentsProvider;->populate(Lcom/google/gson/JsonElement;)V

    if-eqz p3, :cond_7

    .line 163
    invoke-interface {p3, p2, p0}, Lo/Browser;->c(Ljava/lang/String;Lo/agi;)V

    .line 169
    :cond_7
    :goto_2
    instance-of p2, p0, Lo/ago;

    if-eqz p2, :cond_a

    .line 170
    invoke-static {}, Lo/SettingsSlicesContract;->b()Lo/SettingsSlicesContract;

    move-result-object p2

    if-eq p0, p2, :cond_a

    instance-of p2, p1, Lo/PrintDocumentInfo;

    if-eqz p2, :cond_a

    .line 172
    move-object p2, p1

    check-cast p2, Lo/PrintDocumentInfo;

    invoke-virtual {p2}, Lo/PrintDocumentInfo;->c()Ljava/lang/Long;

    move-result-object p3

    .line 173
    move-object p4, p0

    check-cast p4, Lo/ago;

    const-wide/16 v0, 0x0

    if-eqz p3, :cond_8

    .line 175
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long p5, v2, v0

    if-lez p5, :cond_8

    .line 177
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-interface {p4, v0, v1}, Lo/ago;->setTimestamp(J)V

    .line 178
    invoke-virtual {p2}, Lo/PrintDocumentInfo;->d()Ljava/lang/Long;

    move-result-object p1

    invoke-interface {p4, p1}, Lo/ago;->setExpires(Ljava/lang/Long;)V

    goto :goto_3

    .line 179
    :cond_8
    instance-of p2, p1, Lo/TwoStatePreference;

    if-eqz p2, :cond_a

    .line 182
    check-cast p1, Lo/TwoStatePreference;

    invoke-virtual {p1}, Lo/TwoStatePreference;->h()Ljava/lang/Long;

    move-result-object p2

    if-eqz p2, :cond_9

    .line 183
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long p3, v2, v0

    if-lez p3, :cond_9

    .line 184
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    invoke-interface {p4, p2, p3}, Lo/ago;->setTimestamp(J)V

    .line 186
    :cond_9
    invoke-virtual {p1}, Lo/TwoStatePreference;->d()Ljava/lang/Long;

    move-result-object p1

    invoke-interface {p4, p1}, Lo/ago;->setExpires(Ljava/lang/Long;)V

    :cond_a
    :goto_3
    return-object p0
.end method

.method public static d(Lo/NonSdkApiUsedViolation;Ljava/util/List;Lo/IntentReceiverLeakedViolation;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/NonSdkApiUsedViolation;",
            "Ljava/util/List<",
            "Lo/SearchIndexablesProvider;",
            ">;",
            "Lo/IntentReceiverLeakedViolation;",
            ")V"
        }
    .end annotation

    .line 98
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 102
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/SearchIndexablesProvider;

    .line 103
    invoke-virtual {v2}, Lo/SearchIndexablesProvider;->j()Lo/Browser;

    move-result-object v3

    invoke-virtual {v2}, Lo/SearchIndexablesProvider;->b()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lo/Browser;->d(Ljava/lang/String;)Lo/agi;

    move-result-object v3

    invoke-virtual {v2, v3}, Lo/SearchIndexablesProvider;->a(Lo/agi;)V

    .line 104
    invoke-virtual {v2}, Lo/SearchIndexablesProvider;->d()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 109
    :cond_0
    :try_start_0
    invoke-interface {p0, v0, p2}, Lo/NonSdkApiUsedViolation;->e(Ljava/util/List;Lo/IntentReceiverLeakedViolation;)Ljava/util/Map;

    move-result-object p0

    .line 110
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lo/SearchIndexablesProvider;

    .line 111
    invoke-virtual {v8}, Lo/SearchIndexablesProvider;->a()Lo/agi;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 112
    invoke-virtual {v8}, Lo/SearchIndexablesProvider;->d()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lo/RecommendationInfo;

    .line 113
    invoke-virtual {v8}, Lo/SearchIndexablesProvider;->a()Lo/agi;

    move-result-object v0

    invoke-virtual {v8}, Lo/SearchIndexablesProvider;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8}, Lo/SearchIndexablesProvider;->j()Lo/Browser;

    move-result-object v3

    move-wide v4, v6

    invoke-static/range {v0 .. v5}, Lo/Settings;->c(Lo/agi;Lo/RecommendationInfo;Ljava/lang/String;Lo/Browser;J)Lo/agi;

    move-result-object v0

    invoke-virtual {v8, v0}, Lo/SearchIndexablesProvider;->a(Lo/agi;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 118
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p2

    sget-object v0, Lcom/netflix/mediaclient/api/logging/error/ErrorType;->b:Lcom/netflix/mediaclient/api/logging/error/ErrorType;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot load record for paths: \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, v0, p1, p0}, Lo/SpinnerAdapter;->e(Lcom/netflix/mediaclient/api/logging/error/ErrorType;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    return-void
.end method

.method public static e(Ljava/util/List;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 208
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 209
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v2, v1, -0x1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    .line 212
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ge v3, v2, :cond_0

    const/16 v4, 0x2e

    .line 214
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 217
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
