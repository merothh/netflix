.class final enum Lcom/netflix/mediaclient/ui/settings/SettingsFragment$StorageLocation;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/ui/settings/SettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "StorageLocation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netflix/mediaclient/ui/settings/SettingsFragment$StorageLocation;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum EXTERNAL:Lcom/netflix/mediaclient/ui/settings/SettingsFragment$StorageLocation;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "external"
    .end annotation
.end field

.field public static final enum INTERNAL:Lcom/netflix/mediaclient/ui/settings/SettingsFragment$StorageLocation;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "internal"
    .end annotation
.end field

.field private static final synthetic c:[Lcom/netflix/mediaclient/ui/settings/SettingsFragment$StorageLocation;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 135
    new-instance v0, Lcom/netflix/mediaclient/ui/settings/SettingsFragment$StorageLocation;

    const/4 v1, 0x0

    const-string v2, "INTERNAL"

    invoke-direct {v0, v2, v1}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment$StorageLocation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/ui/settings/SettingsFragment$StorageLocation;->INTERNAL:Lcom/netflix/mediaclient/ui/settings/SettingsFragment$StorageLocation;

    .line 136
    new-instance v0, Lcom/netflix/mediaclient/ui/settings/SettingsFragment$StorageLocation;

    const/4 v2, 0x1

    const-string v3, "EXTERNAL"

    invoke-direct {v0, v3, v2}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment$StorageLocation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/ui/settings/SettingsFragment$StorageLocation;->EXTERNAL:Lcom/netflix/mediaclient/ui/settings/SettingsFragment$StorageLocation;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/netflix/mediaclient/ui/settings/SettingsFragment$StorageLocation;

    .line 134
    sget-object v3, Lcom/netflix/mediaclient/ui/settings/SettingsFragment$StorageLocation;->INTERNAL:Lcom/netflix/mediaclient/ui/settings/SettingsFragment$StorageLocation;

    aput-object v3, v0, v1

    sget-object v1, Lcom/netflix/mediaclient/ui/settings/SettingsFragment$StorageLocation;->EXTERNAL:Lcom/netflix/mediaclient/ui/settings/SettingsFragment$StorageLocation;

    aput-object v1, v0, v2

    sput-object v0, Lcom/netflix/mediaclient/ui/settings/SettingsFragment$StorageLocation;->c:[Lcom/netflix/mediaclient/ui/settings/SettingsFragment$StorageLocation;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 134
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/ui/settings/SettingsFragment$StorageLocation;
    .locals 1

    .line 134
    const-class v0, Lcom/netflix/mediaclient/ui/settings/SettingsFragment$StorageLocation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netflix/mediaclient/ui/settings/SettingsFragment$StorageLocation;

    return-object p0
.end method

.method public static values()[Lcom/netflix/mediaclient/ui/settings/SettingsFragment$StorageLocation;
    .locals 1

    .line 134
    sget-object v0, Lcom/netflix/mediaclient/ui/settings/SettingsFragment$StorageLocation;->c:[Lcom/netflix/mediaclient/ui/settings/SettingsFragment$StorageLocation;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/ui/settings/SettingsFragment$StorageLocation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/ui/settings/SettingsFragment$StorageLocation;

    return-object v0
.end method
