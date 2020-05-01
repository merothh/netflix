.class public final Lo/PrintFileDocumentAdapter;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final a:Lo/PrintJobInfo;

.field private static final b:Lo/TwoStatePreference;

.field private static final c:Lo/SeekBarVolumizer;

.field private static final e:Lo/PrintJobInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 192
    new-instance v0, Lo/PrintJobInfo;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lo/PrintJobInfo;-><init>(Z)V

    sput-object v0, Lo/PrintFileDocumentAdapter;->e:Lo/PrintJobInfo;

    .line 193
    new-instance v0, Lo/PrintJobInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/PrintJobInfo;-><init>(Z)V

    sput-object v0, Lo/PrintFileDocumentAdapter;->a:Lo/PrintJobInfo;

    .line 615
    new-instance v0, Lo/SeekBarVolumizer;

    invoke-static {}, Lo/akI;->b()Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Lo/SeekBarVolumizer;-><init>(Ljava/util/Map;)V

    sput-object v0, Lo/PrintFileDocumentAdapter;->c:Lo/SeekBarVolumizer;

    .line 712
    new-instance v0, Lo/TwoStatePreference;

    sget-object v1, Lcom/google/gson/JsonNull;->INSTANCE:Lcom/google/gson/JsonNull;

    const-string v2, "GsonNull.INSTANCE"

    invoke-static {v1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, v1

    check-cast v3, Lcom/google/gson/JsonElement;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x3e

    const/4 v10, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v10}, Lo/TwoStatePreference;-><init>(Lcom/google/gson/JsonElement;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Long;ZILo/amc;)V

    sput-object v0, Lo/PrintFileDocumentAdapter;->b:Lo/TwoStatePreference;

    return-void
.end method

.method public static final a(Ljava/util/Map;)Lo/PrintJob;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lo/RecommendationInfo;",
            ">;)",
            "Lo/PrintJob;"
        }
    .end annotation

    const-string v0, "map"

    invoke-static {p0, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 613
    new-instance v0, Lo/CustomPrinterIconCallback;

    invoke-direct {v0, p0}, Lo/CustomPrinterIconCallback;-><init>(Ljava/util/Map;)V

    check-cast v0, Lo/PrintJob;

    return-object v0
.end method

.method public static final a()Lo/PrintJobInfo;
    .locals 1

    .line 193
    sget-object v0, Lo/PrintFileDocumentAdapter;->a:Lo/PrintJobInfo;

    return-object v0
.end method

.method public static final a(J)Lo/PrinterInfo;
    .locals 1

    .line 650
    new-instance v0, Lo/PrintManager;

    invoke-direct {v0, p0, p1}, Lo/PrintManager;-><init>(J)V

    check-cast v0, Lo/PrinterInfo;

    return-object v0
.end method

.method public static final a(Ljava/util/List;)Lo/VolumePreference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/RecommendationInfo;",
            ">;)",
            "Lo/VolumePreference;"
        }
    .end annotation

    const-string v0, "list"

    invoke-static {p0, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 635
    new-instance v0, Lo/PrintServiceInfo;

    invoke-direct {v0, p0}, Lo/PrintServiceInfo;-><init>(Ljava/util/List;)V

    check-cast v0, Lo/VolumePreference;

    return-object v0
.end method

.method public static final b(Ljava/util/Map;)Lo/PrintJob;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Lo/RecommendationInfo;",
            ">;)",
            "Lo/PrintJob;"
        }
    .end annotation

    const-string v0, "map"

    invoke-static {p0, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 607
    new-instance v0, Lo/SeekBarVolumizer;

    invoke-direct {v0, p0}, Lo/SeekBarVolumizer;-><init>(Ljava/util/Map;)V

    check-cast v0, Lo/PrintJob;

    return-object v0
.end method

.method public static final b()Lo/PrintJobInfo;
    .locals 1

    .line 192
    sget-object v0, Lo/PrintFileDocumentAdapter;->e:Lo/PrintJobInfo;

    return-object v0
.end method

.method public static final b(D)Lo/PrinterInfo;
    .locals 1

    .line 656
    new-instance v0, Lo/PrintServiceRecommendationsLoader;

    invoke-direct {v0, p0, p1}, Lo/PrintServiceRecommendationsLoader;-><init>(D)V

    check-cast v0, Lo/PrinterInfo;

    return-object v0
.end method

.method public static final c(Ljava/lang/Number;)Lo/PrinterInfo;
    .locals 3

    const-string v0, "value"

    invoke-static {p0, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 663
    instance-of v0, p0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    new-instance v0, Lo/PrintServicesLoader;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-direct {v0, p0}, Lo/PrintServicesLoader;-><init>(I)V

    check-cast v0, Lo/PrinterInfo;

    goto :goto_0

    .line 664
    :cond_0
    instance-of v0, p0, Ljava/lang/Long;

    if-eqz v0, :cond_1

    new-instance v0, Lo/PrintManager;

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lo/PrintManager;-><init>(J)V

    check-cast v0, Lo/PrinterInfo;

    goto :goto_0

    .line 665
    :cond_1
    instance-of v0, p0, Ljava/lang/Float;

    if-eqz v0, :cond_2

    new-instance v0, Lo/PrintServiceRecommendationsLoader;

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lo/PrintServiceRecommendationsLoader;-><init>(D)V

    check-cast v0, Lo/PrinterInfo;

    goto :goto_0

    .line 666
    :cond_2
    instance-of v0, p0, Ljava/lang/Double;

    if-eqz v0, :cond_3

    new-instance v0, Lo/PrintServiceRecommendationsLoader;

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lo/PrintServiceRecommendationsLoader;-><init>(D)V

    check-cast v0, Lo/PrinterInfo;

    goto :goto_0

    .line 667
    :cond_3
    instance-of v0, p0, Ljava/lang/Short;

    if-eqz v0, :cond_4

    new-instance v0, Lo/PrintServicesLoader;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-direct {v0, p0}, Lo/PrintServicesLoader;-><init>(I)V

    check-cast v0, Lo/PrinterInfo;

    goto :goto_0

    .line 668
    :cond_4
    instance-of v0, p0, Ljava/lang/Byte;

    if-eqz v0, :cond_5

    new-instance v0, Lo/PrintServicesLoader;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-direct {v0, p0}, Lo/PrintServicesLoader;-><init>(I)V

    check-cast v0, Lo/PrinterInfo;

    goto :goto_0

    .line 669
    :cond_5
    new-instance v0, Lo/PrintServiceRecommendationsLoader;

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lo/PrintServiceRecommendationsLoader;-><init>(D)V

    check-cast v0, Lo/PrinterInfo;

    :goto_0
    return-object v0
.end method

.method public static final c(Ljava/util/List;)Lo/VolumePreference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lo/RecommendationInfo;",
            ">;)",
            "Lo/VolumePreference;"
        }
    .end annotation

    const-string v0, "list"

    invoke-static {p0, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 624
    new-instance v0, Lo/SwitchPreference;

    invoke-direct {v0, p0}, Lo/SwitchPreference;-><init>(Ljava/util/List;)V

    check-cast v0, Lo/VolumePreference;

    return-object v0
.end method

.method public static final e(I)Lo/PrinterInfo;
    .locals 1

    .line 645
    new-instance v0, Lo/PrintServicesLoader;

    invoke-direct {v0, p0}, Lo/PrintServicesLoader;-><init>(I)V

    check-cast v0, Lo/PrinterInfo;

    return-object v0
.end method
