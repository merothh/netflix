.class public final synthetic Lo/EX;
.super Ljava/lang/Object;


# static fields
.field public static final synthetic a:[I

.field public static final synthetic b:[I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 6

    invoke-static {}, Lcom/netflix/model/leafs/SupportedMediaTracks$SupportedMediaTracksType;->values()[Lcom/netflix/model/leafs/SupportedMediaTracks$SupportedMediaTracksType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lo/EX;->b:[I

    sget-object v0, Lo/EX;->b:[I

    sget-object v1, Lcom/netflix/model/leafs/SupportedMediaTracks$SupportedMediaTracksType;->AUDIO_REGULAR:Lcom/netflix/model/leafs/SupportedMediaTracks$SupportedMediaTracksType;

    invoke-virtual {v1}, Lcom/netflix/model/leafs/SupportedMediaTracks$SupportedMediaTracksType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v0, Lo/EX;->b:[I

    sget-object v1, Lcom/netflix/model/leafs/SupportedMediaTracks$SupportedMediaTracksType;->AUDIO_ASSISTIVE:Lcom/netflix/model/leafs/SupportedMediaTracks$SupportedMediaTracksType;

    invoke-virtual {v1}, Lcom/netflix/model/leafs/SupportedMediaTracks$SupportedMediaTracksType;->ordinal()I

    move-result v1

    const/4 v3, 0x2

    aput v3, v0, v1

    sget-object v0, Lo/EX;->b:[I

    sget-object v1, Lcom/netflix/model/leafs/SupportedMediaTracks$SupportedMediaTracksType;->SUBTITLES_REGULAR:Lcom/netflix/model/leafs/SupportedMediaTracks$SupportedMediaTracksType;

    invoke-virtual {v1}, Lcom/netflix/model/leafs/SupportedMediaTracks$SupportedMediaTracksType;->ordinal()I

    move-result v1

    const/4 v4, 0x3

    aput v4, v0, v1

    sget-object v0, Lo/EX;->b:[I

    sget-object v1, Lcom/netflix/model/leafs/SupportedMediaTracks$SupportedMediaTracksType;->SUBTITLES_CLOSED_CAPTIONS:Lcom/netflix/model/leafs/SupportedMediaTracks$SupportedMediaTracksType;

    invoke-virtual {v1}, Lcom/netflix/model/leafs/SupportedMediaTracks$SupportedMediaTracksType;->ordinal()I

    move-result v1

    const/4 v5, 0x4

    aput v5, v0, v1

    sget-object v0, Lo/EX;->b:[I

    sget-object v1, Lcom/netflix/model/leafs/SupportedMediaTracks$SupportedMediaTracksType;->SUBTITLES_OFF:Lcom/netflix/model/leafs/SupportedMediaTracks$SupportedMediaTracksType;

    invoke-virtual {v1}, Lcom/netflix/model/leafs/SupportedMediaTracks$SupportedMediaTracksType;->ordinal()I

    move-result v1

    const/4 v5, 0x5

    aput v5, v0, v1

    invoke-static {}, Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedMediaTracksDialogFragment$DownloadPromptSelectedOption;->values()[Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedMediaTracksDialogFragment$DownloadPromptSelectedOption;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lo/EX;->a:[I

    sget-object v0, Lo/EX;->a:[I

    sget-object v1, Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedMediaTracksDialogFragment$DownloadPromptSelectedOption;->c:Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedMediaTracksDialogFragment$DownloadPromptSelectedOption;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedMediaTracksDialogFragment$DownloadPromptSelectedOption;->ordinal()I

    move-result v1

    aput v2, v0, v1

    sget-object v0, Lo/EX;->a:[I

    sget-object v1, Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedMediaTracksDialogFragment$DownloadPromptSelectedOption;->e:Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedMediaTracksDialogFragment$DownloadPromptSelectedOption;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedMediaTracksDialogFragment$DownloadPromptSelectedOption;->ordinal()I

    move-result v1

    aput v3, v0, v1

    sget-object v0, Lo/EX;->a:[I

    sget-object v1, Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedMediaTracksDialogFragment$DownloadPromptSelectedOption;->a:Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedMediaTracksDialogFragment$DownloadPromptSelectedOption;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedMediaTracksDialogFragment$DownloadPromptSelectedOption;->ordinal()I

    move-result v1

    aput v4, v0, v1

    return-void
.end method
