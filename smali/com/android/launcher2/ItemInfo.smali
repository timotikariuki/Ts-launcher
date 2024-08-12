.class Lcom/android/launcher2/ItemInfo;
.super Ljava/lang/Object;
.source "ItemInfo.java"


# static fields
.field static final NO_ID:I = -0x1


# instance fields
.field cellX:I

.field cellY:I

.field container:J

.field dropPos:[I

.field id:J

.field itemType:I

.field minSpanX:I

.field minSpanY:I

.field requiresDbUpdate:Z

.field screen:I

.field spanX:I

.field spanY:I

.field title:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    const/4 v1, -0x1

    const/4 v0, 0x1

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-wide v2, p0, Lcom/android/launcher2/ItemInfo;->id:J

    .line 53
    iput-wide v2, p0, Lcom/android/launcher2/ItemInfo;->container:J

    .line 58
    iput v1, p0, Lcom/android/launcher2/ItemInfo;->screen:I

    .line 63
    iput v1, p0, Lcom/android/launcher2/ItemInfo;->cellX:I

    .line 68
    iput v1, p0, Lcom/android/launcher2/ItemInfo;->cellY:I

    .line 73
    iput v0, p0, Lcom/android/launcher2/ItemInfo;->spanX:I

    .line 78
    iput v0, p0, Lcom/android/launcher2/ItemInfo;->spanY:I

    .line 83
    iput v0, p0, Lcom/android/launcher2/ItemInfo;->minSpanX:I

    .line 88
    iput v0, p0, Lcom/android/launcher2/ItemInfo;->minSpanY:I

    .line 93
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/ItemInfo;->requiresDbUpdate:Z

    .line 103
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher2/ItemInfo;->dropPos:[I

    .line 106
    return-void
.end method

.method constructor <init>(Lcom/android/launcher2/ItemInfo;)V
    .locals 4
    .param p1, "info"    # Lcom/android/launcher2/ItemInfo;

    .prologue
    const-wide/16 v2, -0x1

    const/4 v1, -0x1

    const/4 v0, 0x1

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-wide v2, p0, Lcom/android/launcher2/ItemInfo;->id:J

    .line 53
    iput-wide v2, p0, Lcom/android/launcher2/ItemInfo;->container:J

    .line 58
    iput v1, p0, Lcom/android/launcher2/ItemInfo;->screen:I

    .line 63
    iput v1, p0, Lcom/android/launcher2/ItemInfo;->cellX:I

    .line 68
    iput v1, p0, Lcom/android/launcher2/ItemInfo;->cellY:I

    .line 73
    iput v0, p0, Lcom/android/launcher2/ItemInfo;->spanX:I

    .line 78
    iput v0, p0, Lcom/android/launcher2/ItemInfo;->spanY:I

    .line 83
    iput v0, p0, Lcom/android/launcher2/ItemInfo;->minSpanX:I

    .line 88
    iput v0, p0, Lcom/android/launcher2/ItemInfo;->minSpanY:I

    .line 93
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/ItemInfo;->requiresDbUpdate:Z

    .line 103
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher2/ItemInfo;->dropPos:[I

    .line 109
    iget-wide v0, p1, Lcom/android/launcher2/ItemInfo;->id:J

    iput-wide v0, p0, Lcom/android/launcher2/ItemInfo;->id:J

    .line 110
    iget v0, p1, Lcom/android/launcher2/ItemInfo;->cellX:I

    iput v0, p0, Lcom/android/launcher2/ItemInfo;->cellX:I

    .line 111
    iget v0, p1, Lcom/android/launcher2/ItemInfo;->cellY:I

    iput v0, p0, Lcom/android/launcher2/ItemInfo;->cellY:I

    .line 112
    iget v0, p1, Lcom/android/launcher2/ItemInfo;->spanX:I

    iput v0, p0, Lcom/android/launcher2/ItemInfo;->spanX:I

    .line 113
    iget v0, p1, Lcom/android/launcher2/ItemInfo;->spanY:I

    iput v0, p0, Lcom/android/launcher2/ItemInfo;->spanY:I

    .line 114
    iget v0, p1, Lcom/android/launcher2/ItemInfo;->screen:I

    iput v0, p0, Lcom/android/launcher2/ItemInfo;->screen:I

    .line 115
    iget v0, p1, Lcom/android/launcher2/ItemInfo;->itemType:I

    iput v0, p0, Lcom/android/launcher2/ItemInfo;->itemType:I

    .line 116
    iget-wide v0, p1, Lcom/android/launcher2/ItemInfo;->container:J

    iput-wide v0, p0, Lcom/android/launcher2/ItemInfo;->container:J

    .line 118
    invoke-static {p0}, Lcom/android/launcher2/LauncherModel;->checkItemInfo(Lcom/android/launcher2/ItemInfo;)V

    .line 119
    return-void
.end method

.method static flattenBitmap(Landroid/graphics/Bitmap;)[B
    .locals 5
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 159
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    mul-int/2addr v3, v4

    mul-int/lit8 v2, v3, 0x4

    .line 160
    .local v2, "size":I
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 162
    .local v1, "out":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    invoke-virtual {p0, v3, v4, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 163
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 164
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 165
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 168
    :goto_0
    return-object v3

    .line 166
    :catch_0
    move-exception v0

    .line 167
    .local v0, "e":Ljava/io/IOException;
    const-string v3, "Favorite"

    const-string v4, "Could not write icon"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    const/4 v3, 0x0

    goto :goto_0
.end method

.method static getPackageName(Landroid/content/Intent;)Ljava/lang/String;
    .locals 2
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 124
    if-eqz p0, :cond_1

    .line 125
    invoke-virtual {p0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v0

    .line 126
    .local v0, "packageName":Ljava/lang/String;
    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 127
    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 129
    :cond_0
    if-eqz v0, :cond_1

    .line 133
    .end local v0    # "packageName":Ljava/lang/String;
    :goto_0
    return-object v0

    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method static writeBitmap(Landroid/content/ContentValues;Landroid/graphics/Bitmap;)V
    .locals 2
    .param p0, "values"    # Landroid/content/ContentValues;
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 173
    if-eqz p1, :cond_0

    .line 174
    invoke-static {p1}, Lcom/android/launcher2/ItemInfo;->flattenBitmap(Landroid/graphics/Bitmap;)[B

    move-result-object v0

    .line 175
    .local v0, "data":[B
    const-string v1, "icon"

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 177
    .end local v0    # "data":[B
    :cond_0
    return-void
.end method


# virtual methods
.method onAddToDatabase(Landroid/content/ContentValues;)V
    .locals 3
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 142
    const-string v0, "itemType"

    iget v1, p0, Lcom/android/launcher2/ItemInfo;->itemType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 143
    const-string v0, "container"

    iget-wide v1, p0, Lcom/android/launcher2/ItemInfo;->container:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 144
    const-string v0, "screen"

    iget v1, p0, Lcom/android/launcher2/ItemInfo;->screen:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 145
    const-string v0, "cellX"

    iget v1, p0, Lcom/android/launcher2/ItemInfo;->cellX:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 146
    const-string v0, "cellY"

    iget v1, p0, Lcom/android/launcher2/ItemInfo;->cellY:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 147
    const-string v0, "spanX"

    iget v1, p0, Lcom/android/launcher2/ItemInfo;->spanX:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 148
    const-string v0, "spanY"

    iget v1, p0, Lcom/android/launcher2/ItemInfo;->spanY:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 149
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 190
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Item(id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/android/launcher2/ItemInfo;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher2/ItemInfo;->itemType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " container="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/launcher2/ItemInfo;->container:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 191
    const-string v1, " screen="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher2/ItemInfo;->screen:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " cellX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher2/ItemInfo;->cellX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " cellY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher2/ItemInfo;->cellY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " spanX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher2/ItemInfo;->spanX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 192
    const-string v1, " spanY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher2/ItemInfo;->spanY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " dropPos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/ItemInfo;->dropPos:[I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 190
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method unbind()V
    .locals 0

    .prologue
    .line 186
    return-void
.end method

.method updateValuesWithCoordinates(Landroid/content/ContentValues;II)V
    .locals 2
    .param p1, "values"    # Landroid/content/ContentValues;
    .param p2, "cellX"    # I
    .param p3, "cellY"    # I

    .prologue
    .line 152
    const-string v0, "cellX"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 153
    const-string v0, "cellY"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 154
    return-void
.end method
