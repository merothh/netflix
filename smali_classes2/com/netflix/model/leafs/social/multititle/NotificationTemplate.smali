.class public abstract Lcom/netflix/model/leafs/social/multititle/NotificationTemplate;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static typeAdapter(Lcom/google/gson/Gson;)Lcom/google/gson/TypeAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/Gson;",
            ")",
            "Lcom/google/gson/TypeAdapter<",
            "Lcom/netflix/model/leafs/social/multititle/NotificationTemplate;",
            ">;"
        }
    .end annotation

    .line 31
    new-instance v0, Lcom/netflix/model/leafs/social/multititle/$AutoValue_NotificationTemplate$GsonTypeAdapter;

    invoke-direct {v0, p0}, Lcom/netflix/model/leafs/social/multititle/$AutoValue_NotificationTemplate$GsonTypeAdapter;-><init>(Lcom/google/gson/Gson;)V

    return-object v0
.end method


# virtual methods
.method public abstract bodyText()Ljava/lang/String;
.end method

.method public abstract ctaButton()Lcom/netflix/model/leafs/social/multititle/NotificationCtaButton;
.end method

.method public abstract headlineText()Ljava/lang/String;
.end method

.method public abstract moduleFiltersForActions()Lcom/netflix/model/leafs/social/multititle/NotificationModuleFilters;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "showModulesOnAction"
    .end annotation
.end method

.method public abstract modulesList()Lcom/netflix/model/leafs/social/multititle/NotificationModuleList;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "modules"
    .end annotation
.end method
